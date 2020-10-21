package friend;

import java.util.Scanner;

public class FriendInfoMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		FriendInfoHandler handler = new FriendInfoHandler(10);
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			System.out.println("* 메뉴 *");
			System.out.println(Menu.INSERT_HIGH + " : 고교친구정보를 저장");
			System.out.println(Menu.INSERT_UNIV + " : 대학친구정보를 저장");
			System.out.println(Menu.SHOW_ALL + " : 전체정보 출력");
			System.out.println(Menu.SHOW_BASIC + " : 기본정보 출력");
			System.out.println(Menu.EXIT + " : exit");
			System.out.println("메뉴선택하세요>>");
			
			int choice = sc.nextInt();
			
			switch(choice) {
			case Menu.INSERT_HIGH : case Menu.INSERT_UNIV :
				handler.addFriend(choice);
				break;
			case Menu.SHOW_ALL :
				handler.showAllData();
				break;
			case Menu.SHOW_BASIC :
				handler.showAllSimpleData();
				break;
			case Menu.EXIT : 
				System.out.println("시스템을 종료합니다. ");
				return; // 메인 메서드의 종료
			}
		}
	

	}

}