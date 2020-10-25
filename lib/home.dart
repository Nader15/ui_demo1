import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: 0,
        onTap: (int index) {},
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.airline_seat_recline_extra), title: Text('الوكالات')),
          BottomNavigationBarItem(icon: Icon(Icons.place), title: Text('الخدمات')),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), title: Text('التأمين')),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 1300,
            width: double.maxFinite,
            child: Container(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                              height: 200,
                              width: double.infinity,
                              child: Image(
                                  image: NetworkImage("https://images.unsplash.com/photo-1546768292-fb12f6c92568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),fit: BoxFit.cover,alignment: Alignment(-1,0)
                              )
                          ),
                          Positioned(
                            top: 20,
                            left: 10,
                            child: Row(
                              children: [
                                Icon(Icons.notifications,size: 30,color: Colors.white),
                                SizedBox(width: 280),
                                Icon(Icons.menu,size: 30,color: Colors.white),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 15,
                            left: 25,
                            child: CircleAvatar(
                              child: Text("12",style: TextStyle(fontSize: 10),),
                              backgroundColor: Colors.red,
                              maxRadius: 10,
                            )
                          ),
                        ],
                      ),
                      Container(
//                        margin: EdgeInsets.only(top: 200),
                        width: double.infinity,
                        height: 20,
                        alignment: Alignment.topRight,
                        child: Text("تصفح حسب نوع السيارة"),
                      ),
                      Container(
//                        margin: EdgeInsets.only(top: 220.0),
                        height: 100,
//                  color: Colors.red,
                        width: double.maxFinite,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    cars("Wagon"),
                                    cars("Sedan"),
                                    cars("Suv"),
                                    cars("Hatchback"),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Divider(thickness: 5),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الكل"),
                            Text("تصفح حسب الماركة"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 70,
//                  color: Colors.red,
                        width: double.maxFinite,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    carLogo("https://images.news18.com/ibnlive/uploads/2018/09/Tesla-Logo.jpg?impolicy=website&width=400&height=0"),
                                    carLogo("https://cf.ltkcdn.net/cars/images/std/203392-676x450-ford-logo_new.jpg"),
                                    carLogo("https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/flexslider_full/public/slideshow_image/toyota.png?itok=FhRVDixy"),
                                    carLogo("https://manofmany.com/wp-content/uploads/2018/03/Top-Car-Emblems-Logos-Explained-Mazda.jpg"),
                                    carLogo("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSdiLwuJXR9hEf-GGeYPtt8ErxrbpPx1yRbeQ&usqp=CAU"),
                                    carLogo("https://souqna.softweb-sa.com/images/categories/1586987124.png"),
                                    carLogo("https://cdn.motor1.com/images/mgl/pAl1J/s3/mini-logo-2018.jpg"),
                                    carLogo("https://ajel.sa/uploads/material-file/5c2097da4408870366abfd99/5c2097d47d4bd.png"),
                                    carLogo("https://img.topchinasupplier.com/file/upload/2020/06/20/Custom-Stainless-Steel-3D-LED-Signs-4s-Car-Shop-Vehicle-Logo-Sign.jpg"),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),

                      Divider(thickness: 5,),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الكل"),
                            Text("جديد الوكالات"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 200,
//                  color: Colors.red,
                        width: double.maxFinite,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    carDetails("BMW","https://images.unsplash.com/photo-1555215695-3004980ad54e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                                    carDetails("Chevrolet","https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                                    carDetails("Chevrolet","https://images.unsplash.com/photo-1562911791-c7a97b729ec5?ixlib=rb-1.2.1&auto=format&fit=crop&w=808&q=80"),
                                    carDetails("Audio A8","https://images.unsplash.com/photo-1537126322380-e757d7feb2f3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=749&q=80"),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 5),
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الكل"),
                            Text("فيديو"),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
                        height: 200,
//                  color: Colors.red,
                        width: double.maxFinite,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          reverse: true,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    carVideo("Chevrolet","https://images.unsplash.com/photo-1562911791-c7a97b729ec5?ixlib=rb-1.2.1&auto=format&fit=crop&w=808&q=80"),
                                    carDetails("Chevrolet","https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                                    carVideo("BMW","https://images.unsplash.com/photo-1555215695-3004980ad54e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],

                  ),
                ),


          ),
        ],
      ),
    );
  }

  Container cars( String carTitle){
    return Container(
      child: Column(
        children: [
         Container(
           height: 70,
           width: 100,
           child: Image(
             image: NetworkImage("https://images.vexels.com/media/users/3/145585/isolated/preview/0cc4204c88694175095d6bda24efb714-city-car-side-view-by-vexels.png",),
           ),
         ),
          Text(carTitle),
        ],
      )
    );
  }
  Container carLogo(String logo){
    return Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
//                    color: Colors.white,
                    border: Border.all(
                      color: Colors.grey,

                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    image: new DecorationImage(
                        image: NetworkImage(logo),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(width: 30,)
              ],
            )
          ],
        )
    );
  }

  Container carDetails(String carName,String carPhoto){
    return Container(
      child:  Row(
        children: [
          GestureDetector(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                        color: Colors.grey
                    )
                ),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,

                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 260,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          image: new DecorationImage(
                              alignment: Alignment(-1, 1),
                              image: NetworkImage(carPhoto),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 40.0,
                        padding: EdgeInsets.only(right: 10.0,left: 10.0),
                        child: Row(
                          children: [
                            Text("ك.د", style: TextStyle(fontSize: 15)),
                            SizedBox(width: 5.0),
                            Text("12900", style: TextStyle(fontSize: 15)),
                            SizedBox(width: 10.0),
                            Text("تبدأ من", style: TextStyle(fontSize: 15)),
                            SizedBox(width: 30.0),
                            Text(carName, style: TextStyle(fontSize: 20)),
                          ],
                        ),
                      )
                    ],
                  ),
                )
            ),
            onTap: () {},
          ),
          SizedBox(width: 10.0),
        ],
      )
    );
  }

  Container carVideo(String carName,String carPhoto){
    return Container(
        child:  Row(
          children: [
            GestureDetector(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.grey
                      )
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: <Widget>[
                        Container(
                          height: 150,
                          width: 260,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            image: new DecorationImage(
                                alignment: Alignment(-1, 1),
                                image: NetworkImage(carPhoto),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          padding: EdgeInsets.only(right: 10.0,left: 10.0),
                          child: Text(carName, style: TextStyle(fontSize: 20)),

                        )
                      ],
                    ),
                  )
              ),
              onTap: () {},
            ),
            SizedBox(width: 10.0),
          ],
        )
    );
  }

}
