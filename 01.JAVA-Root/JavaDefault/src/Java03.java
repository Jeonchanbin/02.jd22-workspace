public class Java03 {
    public static void main(String[] args) {
            /*  [ 자바 연산자 ] 
        : 변수와 값에 대한 연산을 수행하는데 사용됨

        [1.산술 연산자] : 일반적인 수학 연산을 수행하는 데 사용

            +   더하기   x + y   
            -   빼기   x - y   
            *   곱하기   x * y   
            /   나누기   x / y   
            %   나머지   x % y   
            ++   1씩증가   ++x   
            --   1씩감소   --x
        */
        System.out.println("[1. 산술연산자]");
        System.out.println("사칙연산");
        System.out.println("3+7*9/20-5="+(3+7*9/20-5));
        System.out.println("나머지연산자:");
        System.out.println("500을 7로 나눈 나머지:"+(500%7));

        System.out.println("증감연산자:");
        int worldNum = 72;
        System.out.println("현재 세계인구는 "+worldNum+"억이다. 5년뒤 10억명이 더 늘어난다고 한다. 1억명만 더 늘려라"+(worldNum++)+"억명");

        /* [2. 할당연산자] : = 오른쪽의 값을 왼쪽에 할당함! */

        /* [3. 대입연산자] : 기존값에 연산을 중첩함
        -> += , -=, *=, /=, %= */

        /* [4. 비교연산자] : >,<,==,!=,>=,<= */

        /* [5. 논리연산자] : &&(논리곱), ||(논리합), !(논리부정) */
    }
}
