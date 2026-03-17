import 'package:flutter/material.dart';

class SocialProfile extends StatefulWidget {
  const SocialProfile({super.key});

  @override
  State<SocialProfile> createState() => _SocialProfileState();
}

class _SocialProfileState extends State<SocialProfile> {
  List<String> gridImages = ['gridImages/I1-min.jpg','gridImages/I2-min.jpg','gridImages/I3-min.jpg','gridImages/I4-min.jpg','gridImages/I5-min.jpg','gridImages/I6-min.jpg','gridImages/I7-min.jpg','gridImages/I8-min.jpg','gridImages/I9-min.jpg','gridImages/I10-min.jpg','gridImages/I11-min.jpg','gridImages/I12-min.jpg','gridImages/I13-min.jpg','gridImages/I14-min.jpg',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text('Profile',
          style: TextStyle(
            color: Colors.grey[300],
            fontSize: 30
          ),
        ),
        centerTitle: true,
        toolbarHeight: 80,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,
          color: Colors.grey[300],
          size: 30,
        )),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,
            color: Colors.grey[300],
            size: 30,
          )),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,
            color: Colors.grey[300],
            size: 30,
          ))
        ],
        flexibleSpace: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10)
            ),
            gradient: LinearGradient(colors: [Colors.orange,Colors.redAccent],)
          ),
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(width: double.infinity,height: 180,image: AssetImage('assets/US.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                Positioned(
                  bottom: -55,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/Allan-min.jpg'),
                    ),
                  )
                )
              ],
            ),
            SizedBox(height: 60,),
                Center(
                  child: Column(
                    children: [
                      Text('Amos Ongeri',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text('Software Engineer',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Column(
                  children: [
                    Text('Followers',
                      style: TextStyle(
                         color: Colors.grey[600]
                      ),
                    ),
                    Text('108k',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    )
                  ],
                )),
                SizedBox(width: 20,),
                Expanded(child: Column(
                  children: [
                    Text('Following',
                      style: TextStyle(
                        color: Colors.grey[600]
                      ),
                    ),
                    Text('1k',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    )
                  ],
                )),
                SizedBox(width: 20,),
                Expanded(child: Column(
                  children: [
                    Text('Posts',
                      style: TextStyle(
                        color: Colors.grey[600]
                      ),
                    ),
                    Text('250',
                      style: TextStyle(
                        color: Colors.grey
                      ),
                    )
                  ],
                ))
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ElevatedButton(onPressed: (){},
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.orange),
                        fixedSize: WidgetStatePropertyAll(Size.fromWidth(150)),
                        padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                          shape: WidgetStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                      ),
                      child: Text('Follow',
                        style: TextStyle(
                          color: Colors.orange[50]
                        ),
                      )
                  ),
                ),
                SizedBox(width: 70,),
                Flexible(
                    child: ElevatedButton(onPressed: (){},
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(Colors.orange),
                          fixedSize: WidgetStatePropertyAll(Size.fromWidth(150)),
                          padding: WidgetStatePropertyAll(EdgeInsets.all(10)),
                          shape: WidgetStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          )
                        ),
                        child: Text('Message',
                          style: TextStyle(
                            color: Colors.orange[50]
                          ),
                        )
                    )
                )
              ],
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('About',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text('Passionate about turning complex problems into simple, elegant digital experiences.',
                style: TextStyle(
                  color: Colors.grey
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Divider(height: 60,),
            ),
            GridView.builder(
              padding: EdgeInsets.all(10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5
                ),
                itemCount: 14,
                itemBuilder: (context, index) {
                  return
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                          child: Image(image: AssetImage(gridImages[index]),fit: BoxFit.cover,));
                },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.camera_alt_outlined,
          color: Colors.orange[50],
          size: 30,
        ),
      ),
    );
  }
}
