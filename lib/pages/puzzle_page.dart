import 'dart:async';
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/image.dart' as imglib;
import 'package:puzzle_app/models/categories_details.dart';

class PuzzlePage extends StatefulWidget {
  final CategoriesDetails item;

  //final List<CategoriesDetails> CategoriesDetails;

  const PuzzlePage({super.key, required this.item});

  @override
  State<PuzzlePage> createState() => _PuzzlePageState();
}

class _PuzzlePageState extends State<PuzzlePage> {
  List<CategoriesDetails> currentList = [];
  int currentIndex = 0;
  // Liste des pièces du puzzle, de 0 à 8
  List<int> puzzlePieces = List.generate(9, (index) => index);
  bool isSolved = false;
  ui.Image? fullImage;
  //Uint8List? _imageBytes;// bytes bruts de l’image (pour l’afficher avec Image.memory dans la boîte "aperçu").
  bool isImageLoading =
      true; //indique si l’image est en cours de chargement (affiche CircularProgressIndicator).
  //String myimage = 'assets/images/benin.png';
  late String myimage;

  // le timer du chronomètre
  Timer? _timer;
  int _timeLeft = 60; //temps restant en secondes. ici, 1 minutes in seconds
  bool _isTimerRunning =
      false; //vrai si le timer tourne (pour éviter de lancer plusieurs timers)
  bool _isBlinking =
      false; //utilisé pour faire clignoter le compteur qa _timeLeft ≤ 10s
  bool _isGameOver = false; // vrai quand le temps est écoulé

  // initState() : appelé au début ; on lance _loadAndSplitImage() pour charger l’image.
  @override
  void initState() {
    super.initState();
    myimage = widget.item.imageUrl;

    // Déterminer la liste actuelle et l'index
    _initializeCurrentListAndIndex();

    _loadAndSplitImage();
  }

  void _initializeCurrentListAndIndex() {
    // Déterminer quelle liste contient l'item actuel
    if (flagList.contains(widget.item)) {
      currentList = flagList;
    } else if (placeList.contains(widget.item)) {
      currentList = placeList;
    } else if (foodList.contains(widget.item)) {
      currentList = foodList;
    } else if (cultureList.contains(widget.item)) {
      currentList = cultureList;
    }

    // Trouver l'index de l'item actuel
    currentIndex = currentList.indexWhere(
      (item) =>
          item.title == widget.item.title &&
          item.imageUrl == widget.item.imageUrl,
    );
  }

  // démarrage et clignotement du timer
  void _startTimer() {
    if (_isTimerRunning || _isGameOver) {
      return;
    }
    _isTimerRunning = true;
    /* _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        if(mounted){}
        setState(() {
          _timeLeft--;
          if (_timeLeft <= 10) {
            _isBlinking = !_isBlinking;
          }
        });
      } else {
        setState(() {
          _isGameOver = true;
          _isTimerRunning = false;
        });
        _timer?.cancel();
        // Optional: show a Game Over dialog
      }
    }); */
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_timeLeft > 0) {
        if (mounted) {
          setState(() {
            _timeLeft--;
            if (_timeLeft <= 10) {
              _isBlinking = !_isBlinking;
            }
          });
        }
      } else {
        if (mounted) {
          setState(() {
            _isGameOver = true;
            _isTimerRunning = false;
          });
        }
        _timer?.cancel();
      }
    });
  }

  // fonction pour recommencer le jeu
  void _restartGame() {
    _timer?.cancel();
    setState(() {
      _isTimerRunning = false;
      _isGameOver = false;
      _timeLeft = 60;
      _isBlinking = false;
      isSolved = false;
      _shufflePieces();
    });
  }

  // fonction pour Charger l’image et la convertir en ui.Image
  Future<void> _loadAndSplitImage() async {
    isImageLoading = true;
    setState(() {});

    final ByteData data = await rootBundle.load(
      myimage,
    ); // lit ce fichier image inclus dans assets
    final Uint8List bytes = data.buffer
        .asUint8List(); // permet d'obtenir les octets bruts de l’image

    //_imageBytes = bytes; // permet de garder ces octets pour l’aperçu (Image.memory)

    final imglib.Image? image = imglib.decodeImage(
      bytes,
    ); // permet d'utiliser la librairie image pour décoder et obtenir un objet imglib.Image (facile pour connaître largeur/hauteur). le tout est stocké dans la variable "image"
    if (image == null) return;

    final Completer<ui.Image> completer =
        Completer(); //permet de créer un objet qui permettra de produire une valeur (ici une image de type ui.Image) plus tard, de façon asynchrone.
    ui.decodeImageFromList(
      Uint8List.fromList(imglib.encodePng(image)),
      (result) {
        completer.complete(result);
      },
    ); //permet de reconvertit en bytes PNG puis on demande à Flutter de produire un ui.Image (nécessaire pour dessiner une partie via Canvas).
    fullImage = await completer
        .future; // attend que la conversion soit terminée et stocke le resulta dans fullImage

    //Après 500 ms on mélange les pièces (_shufflePieces) et on met isImageLoading = false pour enlever le loader.
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _shufflePieces();
          isImageLoading = false;
        });
      }
    });
  }

  // fonction pour mélanger les pièces
  void _shufflePieces() {
    final random = Random();
    puzzlePieces.shuffle(random);
    isSolved = false;
  }

  // fonction pour échanger 2 pièces de puzzle
  void _onAccept(int targetIndex, int pieceIndex) {
    if (_isGameOver || isSolved) return;

    _startTimer();

    setState(() {
      int draggedPieceCurrentIndex = puzzlePieces.indexOf(pieceIndex);
      int targetPieceCurrentIndex = puzzlePieces.indexOf(targetIndex);

      // Swap the pieces
      final temp = puzzlePieces[draggedPieceCurrentIndex];
      puzzlePieces[draggedPieceCurrentIndex] =
          puzzlePieces[targetPieceCurrentIndex];
      puzzlePieces[targetPieceCurrentIndex] = temp;

      _checkWinCondition();
    });
  }

  // Fonction pour aller au puzzle préccedent
  void _previousGame() {
    if (currentIndex > 0) {
      // Il y a un puzzle précédent
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PuzzlePage(item: currentList[currentIndex - 1]),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vous êtes déjà au premier puzzle !'),
          duration: Duration(seconds: 2),
        ),
      );
      Navigator.of(context).pop();
    }
  }

  void _nextGame() {
    if (currentIndex < currentList.length - 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => PuzzlePage(item: currentList[currentIndex + 1]),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vous êtes déjà au dernier puzzle !'),
          duration: Duration(seconds: 2),
        ),
      );
      Navigator.of(context).pop();
    }
  }

  // fonction pour vérifier si le jeu est gagné
  void _checkWinCondition() {
    bool solved = true;
    for (int i = 0; i < puzzlePieces.length; i++) {
      if (puzzlePieces[i] != i) {
        solved = false;
        break;
      }
    }
    if (mounted) {
      setState(() {
        isSolved = solved;
      });
    }
    if (isSolved) {
      _timer?.cancel();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
            child: Container(
              padding: EdgeInsets.all(15),
              width: 300,
              //height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    // ignore: deprecated_member_use
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Félicitation puzzle résolu",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.none,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Le ${widget.item.title} ${widget.item.description}",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: currentIndex > 0 ? _previousGame : null,
                        icon: Icon(
                          Icons.arrow_back,
                          color: currentIndex > 0 ? Colors.blue : Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          _restartGame();
                        },
                        icon: const Icon(Icons.replay),
                      ),
                      IconButton(
                        onPressed: currentIndex < currentList.length - 1
                            ? _nextGame
                            : null,
                        icon: Icon(
                          Icons.arrow_forward,
                          color: currentIndex < currentList.length - 1
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      );

      /*       ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Félicitations ! Vous avez résolu le puzzle !'),
          duration: Duration(seconds: 3),
        ),
      );
 */
    }
  }

  // fonction pour afficher un apercue de l'image a obtenir

  void _showFullImageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Image.asset(myimage);
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel(); // annule le timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDBEEFF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          widget.item.title,
          style: TextStyle(fontFamily: "PlayfairDisplayMédiumIt"),
        ),
        centerTitle: true,
      ),
      body: isImageLoading
          ? const Center(child: CircularProgressIndicator())
          : Center(
              child: Padding(
                padding: const EdgeInsets.all(17),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: _showFullImageDialog,
                          child: SizedBox(
                            width: 90,
                            height: 70,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(myimage, fit: BoxFit.cover),
                            ),
                          ),
                          /* SizedBox(
                            width: 80,
                            height: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Image.asset(myimage, fit: BoxFit.cover),
                            ),
                          ), */
                        ),
                        Opacity(
                          opacity: _timeLeft <= 10 && _isBlinking ? 1.0 : 0.9,
                          child: Text(
                            '${(_timeLeft ~/ 60).toString().padLeft(2, '0')}:${(_timeLeft % 60).toString().padLeft(2, '0')}',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: _timeLeft <= 10 && _isBlinking
                                  ? Colors.red
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // affichage du puzzle
                    Container(
                      /* width: 350,
                      height: 350, */
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.all(9),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 9,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 2.0, // Espace réduit
                              mainAxisSpacing: 2.0, // Espace réduit
                            ),
                        itemBuilder: (context, index) {
                          final pieceIndex = puzzlePieces[index];
                          return DragTarget<int>(
                            builder: (context, candidateData, rejectedData) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(color: Colors.black),
                                  color: Colors.grey.shade200,
                                ),
                                child: buildPuzzlePiece(pieceIndex),
                              );
                            },
                            onWillAccept: (data) => !_isGameOver,
                            onAccept: (data) => _onAccept(pieceIndex, data),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 10),

                    // affichage du message de résutat
                    if (_isGameOver) ...[
                      const Text(
                        'Temps écoulé ! Game Over.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
    );
  }

  // construction  du puzzle
  Widget buildPuzzlePiece(int index) {
    if (fullImage == null) {
      return const CircularProgressIndicator();
    }

    final double pieceWidth = fullImage!.width / 3;
    final double pieceHeight = fullImage!.height / 3;
    final int row = (index / 3).floor();
    final int col = index % 3;
    final Rect src = Rect.fromLTWH(
      col * pieceWidth,
      row * pieceHeight,
      pieceWidth,
      pieceHeight,
    );

    final customPainter = CustomPaint(
      painter: _ImageCropper(fullImage!, src),
      child: Container(),
    );

    return Draggable<int>(
      data: index,
      feedback: Opacity(
        opacity: 0.7,
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 2,
              ),
            ],
          ),
          child: customPainter,
        ),
      ),
      childWhenDragging: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 172, 172, 172),
        ),
      ),
      child: isSolved ? customPainter : customPainter,
    );
  }
}

// construction des images des pièces du puzzle
class _ImageCropper extends CustomPainter {
  final ui.Image image;
  final Rect src;

  _ImageCropper(this.image, this.src);

  @override
  void paint(Canvas canvas, Size size) {
    final Rect dst = Offset.zero & size;
    canvas.drawImageRect(image, src, dst, Paint());
  }

  @override
  bool shouldRepaint(covariant _ImageCropper oldDelegate) {
    return oldDelegate.image != image || oldDelegate.src != src;
  }
}
