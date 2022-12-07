// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_call_super

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'allmajors_second.dart';

class allmajors extends StatefulWidget {
  const allmajors({super.key});

  @override
  State<allmajors> createState() => _allmajorsState();
}

class _allmajorsState extends State<allmajors> {
  final List<Major> majors = [];
  @override
  void initState() {
    majors.add(Major(
        'https://img-cdn.hltv.org/eventlogo/0_WPLT2a7WZRZ8rA5rTuu7.png?ixlib=java-2.1.0&w=50&s=8679487663dff4b0d49dc20926b19cb1',
        'DreamHack Winter 2013',
        'fnatic',
        'Jönköping, Suécia',
        '28/11/2013 - 30/11/2013',
        '250.000 USD'));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/pI96RC28rAEwuda0jqPJuQ.png?ixlib=java-2.1.0&w=50&s=686d4d65336d5c52171e8d489bd03abb',
      'ESL Major Series One Katowice 2014',
      'Virtus.pro',
      'Katowice, Polônia',
      '250.000 USD',
      '13/03/2014 - 16/03/2014',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/VeJ2TO2oi3iMGcykWQfvx9.png?ixlib=java-2.1.0&w=50&s=510ee51860db113ebba944eb2d5e9010',
      'ESL One: Cologne 2014',
      'NIP',
      'Cologne, Alemanha',
      '14/08/2014 - 17/08/2014',
      '250.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/0_WPLT2a7WZRZ8rA5rTuu7.png?ixlib=java-2.1.0&w=50&s=8679487663dff4b0d49dc20926b19cb1',
      'DreamHack Winter 2014',
      'LDLC',
      'Jönköping, Suécia',
      '27/11/2014 - 29/11/2014',
      '250.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/VeJ2TO2oi3iMGcykWQfvx9.png?ixlib=java-2.1.0&w=50&s=510ee51860db113ebba944eb2d5e9010',
      'ESL One: Katowice 2015',
      'fnatic',
      'Katowice, Polônia',
      '12/03/2015 - 15/03/2015',
      '250.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/VeJ2TO2oi3iMGcykWQfvx9.png?ixlib=java-2.1.0&w=50&s=510ee51860db113ebba944eb2d5e9010',
      'ESL One: Cologne 2015',
      'fnatic',
      'Cologne, Alemanha',
      '20/08/2015 - 23/08/2015',
      '250.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/N0V0DizOCfTLIA1vFfkmjy.png?ixlib=java-2.1.0&w=50&s=eac37e48167ad8f8a05e826bf679d9f8',
      'DreamHack Open Cluj⁠-⁠Napoca 2015',
      'Envy',
      'Cluj-Napoca, Romênia',
      '18/10/2015 - 01/11/2015',
      '250.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/rHzUCnLlUk2zZX2p5miT7b.png?ixlib=java-2.1.0&w=50&s=d4c5022b2512ef3425e2f71a4c37a3fa',
      'MLG Major Championship: Columbus 2016',
      'Luminosity',
      'Columbus, Ohio, EUA',
      '29/03/2016 - 03/04/2016',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/2MBvmna8xLnIOO-VXbdjn3.png?ixlib=java-2.1.0&w=50&s=6a94df6eff1841ecb0e29b2ec680166b',
      'ESL One: Cologne 2016',
      'SK',
      'Cologne, Alemanha',
      '10/07/2016 - 10/07/2016',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/XyzszyOb_jGPlkaudVKj6d.png?ixlib=java-2.1.0&w=50&s=06ef1b780176d8dbecfd5b926048b02a',
      'ELEAGUE Major: Atlanta 2017',
      'Astralis',
      'Atlanta, Georgia, EUA',
      '22/01/2017 - 29/01/2017',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/u5akIjBHndXwYGcoBugsyb.png?ixlib=java-2.1.0&w=50&s=ce6a3ea9cfaaeed0ce06a8f9649ce205',
      'PGL Major Kraków 2017',
      'Gambit',
      'Cracóvia, Polônia',
      '16/07/2017 - 23/07/2017',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/9cDBwvVlONYOByd7p4a7EB.png?ixlib=java-2.1.0&w=50&s=77a4619a131c6f97c9942c41c87e62b8',
      'ELEAGUE Major: Boston 2018',
      'Cloud9',
      'Boston, Massachusetts, EUA',
      '19/01/1018 - 28/01/1018 ',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/tM6dUOR6oerRgaR_ob3mHD.png?ixlib=java-2.1.0&w=50&s=9f72fb993ae9b262ada76e92ce2593ec',
      'FACEIT Major: London 2018',
      'Astralis',
      'Londres, Inglaterra',
      '12/09/2018 - 23/09/2018',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/dxrSBtNp6X_5sEX_RtI-9F.png?ixlib=java-2.1.0&w=50&s=4495ad07a9c3477df3ddaab1ca012d0e',
      'Intel Extreme Masters XIII - Katowice Major 2019',
      'Astralis',
      'Katowice, Polônia',
      '20/02/2019 - 03/03/2019',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/AFAnOn8KE4GN437ZgfReXv.png?ixlib=java-2.1.0&w=50&s=1e5f3de65c389436021f2336c6ad9997',
      'StarLadder Berlin Major 2019',
      'Astralis',
      'Berlin, Alemanha',
      '28/08/2019 - 08/09/2019',
      '1.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/AFAnOn8KE4GN437ZgfReXv.png?ixlib=java-2.1.0&w=50&s=1e5f3de65c389436021f2336c6ad9997',
      'ESL One: Rio 2020',
      '(Cancelado)',
      'Rio de Janeiro, Brasil',
      '09/11/2020 - 22/11/2020',
      '2.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/KQe1GgNJ1u1pqSdarH9YA9.png?ixlib=java-2.1.0&w=50&s=cda05de67bfa4763533cf52a2ef90ea1',
      'ESL One: Rio 2020',
      '(Cancelado)',
      'Rio de Janeiro, Brasil',
      '09/11/2020 - 22/11/2020',
      '2.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/POW-qHvLqFPugvWfxhtAhs.png?ixlib=java-2.1.0&w=50&s=3ac23f0fec91851ef7a625fb37a8e6da',
      'PGL Major Stockholm 2021',
      'Natus Vincere',
      'Stockholm, Suécia',
      '30/10/2021 - 307/11/2021',
      '2.000.000 USD',
    ));
    majors.add(Major(
      'https://img-cdn.hltv.org/eventlogo/NYf0zt_ZEL19qct3ZHccJ9.png?ixlib=java-2.1.0&w=50&s=00637f2b9acdf6d83e935cfce31fd2ec',
      'PGL Major Antwerp 2022',
      'FaZe',
      'Antwerp, Bélgica',
      '14/05/2022 - 22/05/2022',
      '1.000.000 USD',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/csgo_logo.png',
              fit: BoxFit.contain,
              height: 70,
            ),
            Container(
                padding: const EdgeInsets.all(8.0), child: Text('All Majors'))
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 0)),
            ListTile(
              title: Text(
                'O que é um Major:',
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 30)),
            ListTile(
              title: Text(
                'Os Counter-Strike: Global Offensive Major Championships, mais conhecidos por Majors, são torneios de esports de Counter-Strike: Global Offensive patrocinados pela Valve, a produtora do jogo.',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      body: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: majors.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(136, 226, 226, 226),
                border:
                    Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 300,
              child: InkWell(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Major(
                              majors[index].image,
                              majors[index].name,
                              majors[index].winner,
                              majors[index].location,
                              majors[index].date,
                              majors[index].prize,
                            )),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      majors[index].image,
                    ),
                    Padding(padding: EdgeInsets.all(15)),
                    Flexible(
                      child: Text(
                        majors[index].name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /*
             */
            );
          }),
    );
  }
}
