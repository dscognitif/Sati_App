import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// Where the settings page will be in the form of vertical buttons

/* class TimerPicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: CupertinoTimerPicker(
          onTimerDurationChanged: (Duration value) {},
        ),
      ),
    );
  }
} */


class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ButtonTheme(
            minWidth: 400.0,
            height: 100.0,
            child: FlatButton(
              onPressed: () {},
              child: Text('Timer Picker'),
              color: Colors.white,
              splashColor: Colors.lightBlue,
            ),
          ),
          ButtonTheme(
            minWidth: 400.0,
            height: 100.0,
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, BellSoundsPage());
              },
              child: Text('Bell Sounds'),
              color: Colors.white,
              splashColor: Colors.lightBlue,
            ),
          ),
          ButtonTheme(
            minWidth: 400.0,
            height: 100.0,
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, AmbientSoundsPage());
              },
              child: Text('Ambient Sounds'),
              color: Colors.white,
              splashColor: Colors.lightBlue,
            ),
          ),
          ButtonTheme(
            minWidth: 400.0,
            height: 100.0,
            child: FlatButton(
              onPressed: () {
                Navigator.push(context, MeditationTechniquesPage());
              },
              child: const Text('Meditation Techniques'),
              color: Colors.white,
              splashColor: Colors.lightBlue,
            ),
          ),
        ],
      ),
    );
  }
}

// Implement the CupertinoTimerPicker which sets the duration of the Countdown Timer in main.dart

/*
class TimerPicker extends StatelessWidget {
  return Scaffold(
    Center(
      CupertinoTimerPicker(

    ),
    ),
  );
} 
*/

class BellSoundsPage extends MaterialPageRoute<Null> {
  BellSoundsPage()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Bell Sounds"),
              backgroundColor: Colors.deepPurple,
            ),
          );
        });
}

class AmbientSoundsPage extends MaterialPageRoute<Null> {
  AmbientSoundsPage()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Ambient Sounds"),
              backgroundColor: Colors.deepPurple,
            ),
          );
        });
}

class MeditationTechniquesPage extends MaterialPageRoute<Null> {
  MeditationTechniquesPage()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Meditation Techniques"),
              backgroundColor: Colors.deepPurple,
            ),
            body: ListView(
              children: <Widget>[
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Mindfulness Meditation'),
                        subtitle: Text(
                            'A beginner-friendly adaptation from traditional Buddhist meditative practises, especially Vipassanā.'),
                      ),
                      ButtonTheme.bar(
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('LEARN MORE'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Vipassanā Meditation'),
                        subtitle: Text(
                            'A Theravada Buddhist meditative practise that attempts to gain insight into the true nature of reality.'),
                      ),
                      ButtonTheme.bar(
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('LEARN MORE'),
                              onPressed: () {
                                Navigator.push(context, VipassanaMeditation());
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Zen Meditation (Zazen)'),
                        subtitle: Text(
                            'A Meditative discipline typically the primary practise of the Zen Buddhist tradition.'),
                      ),
                      ButtonTheme.bar(
                        child: ButtonBar(
                          children: <Widget>[
                            FlatButton(
                              child: const Text('LEARN MORE'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
}

// Pages within the Meditation Techniques that describe the Meditation Techniques

class VipassanaMeditation extends MaterialPageRoute<Null> {
  VipassanaMeditation()
      : super(builder: (BuildContext context) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Vipassana Meditation"),
              backgroundColor: Colors.deepPurple,
            ),
            body: Container(
               padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: <Widget>[
                  Image.asset('assets/DharmaWheel.png'),
                  Text("Vipassana is the oldest of Buddhist meditation practices. The method comes directly from the Satipatthana Sutta [Foundations of Mindfulness], a discourse attributed to the Buddha himself. Vipassana means to see things as they really are or insight into the nature of existence; it is one of the most popular forms of meditation techniques as result of a growth in prominence in 20th century most notably by S.N Goenka and Joseph Goldstein. If you're just starting out on the practise of meditation, this is the go-to practise. "),
                  Text('                                                                                                           Steps:', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('1. Sit down either on a chair or on a cushion. Make sure that the back is straight and erect yet relaxed. If on a cushion, sit in a cross legged posture. '),
                  Text('2. Slowly close your eyes.'),
                  Text('3. Begin to be aware of the breath, by engaging in the practise of anapanasati (mindfulness of breathing). Focus all your attention, from moment to moment, to the movement of the breath.'),
                  Text('4. Begin to notice the rising and falling sensation of the abdomen. One can alternatively focus on the inhalation and exhalation of the nostrils.'),
                  Text('5. Distractions might appear in the form of other bodily sensations, perceptual sensations that arise from the five senses, and thoughts appearing in your mind. Notice these distractions for a while and then return back to the focus of the breath. '),
                  Text('6. By developing this technique one begins to developing a secondary awareness to these distractions ; allowing these thoughts, emotions, perceptual sensations to come and go as they please  without being carried way from the primary awareness that is anapanasati in the awareness of the breath.'),
                ],
              ),
            ),
          );
        });
}
