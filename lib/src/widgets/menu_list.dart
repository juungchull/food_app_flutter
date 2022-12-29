import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List url = [
      'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1565958011703-44f9829ba187?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Zm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1467003909585-2f8a72700288?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1432139509613-5c4255815697?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      'https://images.unsplash.com/photo-1563379926898-05f4575a45d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjB8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
    ];
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: url.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.only(right: 25),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
              url[index],
            ),
          ),
        ),
      ),
    );
  }
}
//리스트에서 사용되는 주요 메서드와 프로퍼티는 다음과 같다.

//List<데이터 타입>변수명 = [데이터1,데이터2,데이터3,......];

// indexOf(요소) :요소의 인덱스 값
// add(데이터) :데이터 추가
// addAll([데이터1,데이터2]) :여러 데이터 추가
// remove(요소) :요소 삭제
// removeAt(인덱스) :지정한 인덱스의 요소 삭제
// contains(요소) :요소가 포함되었으면 true, 아니면 false
// clear() :리스트 요소 전체 삭제
// sort() :리스트 요소 정렬
// first :리스트 첫 번째 요소
// last :리스트 마지막 요소
// reversed :리스트 요소 역순
// isNotEmpty :리스트가 비어있지 않으면 true, 아니면 false
// isEmpty :리스트가 비었으면 true, 아니면 false
// single :리스트에 단 1개의 요소만 있다면 해당 요소 리턴
