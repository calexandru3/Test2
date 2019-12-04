//
//  Models.swift
//  Test2
//
//  Created by Bogdan Marica on 03/12/2019.
//  Copyright © 2019 Florin Precup. All rights reserved.
//

import UIKit

struct ProfileStruct {
    let image:UIImage
    let name:String
    let adress:String
    let description:String
    let isOnline:Bool
}

struct CarStruct {
    let image:UIImage
    let description:String
}

func getMyProfile()->[ProfileStruct] {
    return [ProfileStruct.init(image: UIImage(named: "cat1")!, name: "Alex", adress: "Bucuresti", description: "No description aviable!", isOnline: false)]
}

func getMyFriends()->[ProfileStruct] {
    return [
        ProfileStruct.init(image: UIImage(named: "cat2")!, name: "Dorel", adress: "Bucuresti", description: "Răspândeşte lumina, iar întunericul se va risipi de la sine", isOnline: true),
        ProfileStruct.init(image: UIImage(named: "cat3")!, name: "Mirel", adress: "Craiova", description: "Cuvintele sunt precum frunzele. Acolo unde ele abundă, arareori mai găseşti şi roade împrejur. – Alexander Pope", isOnline: false),
            ProfileStruct.init(image: UIImage(named: "cat4")!, name: "Alin", adress: "Vaslui", description: "Câinilor le vine uşor să-şi arate afecţiunea. Ei nu se îmbufnează şi nu stau supăraţi. Nu fug niciodată de acasă când sunt trataţi nedrept. Nu se plâng niciodată de mâncarea ce li se dă. Nu se plâng de cum arată casa. Sunt cavaleri şi curajoşi. Gata să-şi protejeze stăpâna cu preţul vieţii lor. Le plac copiii, indiferent de cât de gălăgioşi şi supărători ei sunt. Câinilor pur şi simplu le place să fie în compania lor. De fapt, câinii fac concurenţă soţilor (bărbaţilor) şi dacă aceştia ar copia mai mult din virtuţile lor, viaţa în familiile noastre ar fi mult mai plăcută. – Billy Graham", isOnline: false),
            ProfileStruct.init(image: UIImage(named: "cat5")!, name: "Dorel", adress: "Bucuresti", description: "Răspândeşte lumina, iar întunericul se va risipi de la sine – Erasmus", isOnline: true),
            ProfileStruct.init(image: UIImage(named: "cat3")!, name: "Mirel", adress: "Craiova", description: "Cuvintele sunt precum frunzele. Acolo unde ele abundă, arareori mai găseşti şi roade împrejur. – Alexander Pope", isOnline: false),
            ProfileStruct.init(image: UIImage(named: "cat6")!, name: "Alin", adress: "Vaslui", description: "Câinilor le vine uşor să-şi arate afecţiunea. Ei nu se îmbufnează şi nu stau supăraţi. Nu fug niciodată de acasă când sunt trataţi nedrept. Nu se plâng niciodată de mâncarea ce li se dă. Nu se plâng de cum arată casa. Sunt cavaleri şi curajoşi. Gata să-şi protejeze stăpâna cu preţul vieţii lor. Le plac copiii, indiferent de cât de gălăgioşi şi supărători ei sunt. Câinilor pur şi simplu le place să fie în compania lor. De fapt, câinii fac concurenţă soţilor (bărbaţilor) şi dacă aceştia ar copia mai mult din virtuţile lor, viaţa în familiile noastre ar fi mult mai plăcută. – Billy Graham", isOnline: true),
            ProfileStruct.init(image: UIImage(named: "cat1")!, name: "Dorel", adress: "Bucuresti", description: "Răspândeşte lumina, iar întunericul se va risipi de la sine – Erasmus", isOnline: true),
            ProfileStruct.init(image: UIImage(named: "cat3")!, name: "Mirel", adress: "Craiova", description: "Cuvintele sunt precum frunzele. Acolo unde ele abundă, arareori mai găseşti şi roade împrejur. – Alexander Pope", isOnline: false),
            ProfileStruct.init(image: UIImage(named: "cat2")!, name: "Alin", adress: "Vaslui", description: "Câinilor le vine uşor să-şi arate afecţiunea. Ei nu se îmbufnează şi nu stau supăraţi. Nu fug niciodată de acasă când sunt trataţi nedrept. Nu se plâng niciodată de mâncarea ce li se dă. Nu se plâng de cum arată casa. Sunt cavaleri şi curajoşi. Gata să-şi protejeze stăpâna cu preţul vieţii lor. Le plac copiii, indiferent de cât de gălăgioşi şi supărători ei sunt. Câinilor pur şi simplu le place să fie în compania lor. De fapt, câinii fac concurenţă soţilor (bărbaţilor) şi dacă aceştia ar copia mai mult din virtuţile lor, viaţa în familiile noastre ar fi mult mai plăcută. – Billy Graham", isOnline: true)
           ]
}

func getCars()->[CarStruct] {
    return [
            CarStruct(image: UIImage(named: "car1")!, description: "Audi 1"),
            CarStruct(image: UIImage(named: "car2")!, description: "Audi 2"),
            CarStruct(image: UIImage(named: "car3")!, description: "Audi 3"),
            CarStruct(image: UIImage(named: "car4")!, description: "Audi 4")
           ]
}
