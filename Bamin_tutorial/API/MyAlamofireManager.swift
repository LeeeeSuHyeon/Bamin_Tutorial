//
//  MyAlamofireManager.swift
//  Bamin_tutorial
//
//  Created by 이수현 on 2022/12/28.
//

import Foundation
import Alamofire

    
final class MyAlamofireManager{
    
    //싱글턴 적용
    static let shared = MyAlamofireManager()
    
    // 인터셉터 (공통 파라미터, 토큰)
    let interceptors = Interceptor(interceptors:
                        [
                            BaseInterceptor()
                        ])
    
    
    // 로거 설정
//    let monitors
    
    // 세션 설정
    var session : Session
    
    private init(){
        session = Session(interceptor : interceptors)
    }
}
