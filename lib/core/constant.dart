import 'package:flutter/material.dart';

class Constant {
  static List size(BuildContext context) {
    return [
      MediaQuery.of(context).size.height,
      MediaQuery.of(context).size.width
    ];
  }

  static bool mode = true;
  static List namess = ["Taqvim", "Tasbeh", "Kompass", "Allohning 99 ismi"];
  static double index = 0;
  static int count = 0;
  static Color containerColor = Colors.white.withOpacity(0.8);
  static Color black = Colors.black;

  static int sanpLength = 0;
  static List pageForIcon = [
    'assets/images/times.jpg',
    'assets/images/tasbih.png',
    "assets/images/qibla.png",
    "assets/images/Alloh.jpg",
  ];
  static List months = [
    "Yanvar",
    "Fevral",
    "Mart",
    "Aprel",
    "May",
    "Iyun",
    "Iyul",
    "Avgust",
    "Oktyabr",
    "Sentyabr",
    "Noyabr",
    "Dekabr"
  ];

  static List names = [
    "Bomdod",
    "Quyosh Chiqishi",
    "Peshin",
    "Asr",
    "Shom",
    "Xufton"
  ];
  static List images = [
    Image.asset('assets/images/bomdod.png', fit: BoxFit.cover),
    Image.asset('assets/images/peshin.png', fit: BoxFit.cover),
    Image.asset('assets/images/asr.png', fit: BoxFit.cover),
    Image.asset('assets/images/shom.png', fit: BoxFit.cover),
    Image.asset('assets/images/xufton.png', fit: BoxFit.cover)
  ];
  static List imagesW = [
    Image.asset('assets/images/bomdodW.png', fit: BoxFit.cover),
    Image.asset('assets/images/peshinW.png', fit: BoxFit.cover),
    Image.asset('assets/images/asrW.png', fit: BoxFit.cover),
    Image.asset('assets/images/shomW.png', fit: BoxFit.cover),
    Image.asset('assets/images/xuftonW.png', fit: BoxFit.cover)
  ];
  static String backgroundImage = 'assets/images/background.jpg';

  static AppBar appBar(context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Text(
        "Taqvim",
        style: TextStyle(
            color: Colors.black,
            fontFamily: "tavqimUchun",
            fontSize: Constant.size(context)[1] * 0.08),
      ),
    );
  }

  static List AllohningIsmlari = [
    {
      "arabcha": "????????",
      "oqilishi": "Alloh",
      "tarjimasi":
          "Xudoning ismi. Barcha suralarning (bittasidan tashqari) boshlanishida qo??llaniladi",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Ar-Rohm??n",
      "tarjimasi":
          "Mehribon ??? Ulug?? ne??matlarni beruvchi. Bu sifat faqat Allohga xos bo??lib, barchaga kofirga ham, mo??minga ham mehribon va ne??mat beruvchi ma??nosini anglatadi. Rahmon sifatini Alloh taolodan boshqa hech kimga nisbatan ishlatib bo??lmaydi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Ar-Roh??m",
      "tarjimasi":
          "Rahmli ??? ???Rohiym??? latif ne??matlarni beruvchi.Bu sifat xosroq bo??lib, qiyomat kuni faqat mo??minlarga rahm qiluvchi ma??nosini anglatadi. Va Allohdan o??zgalarga, jumladan Payg??ambar alayhissalomga nisbatan ham ishlatiladi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "Al-Malik",
      "tarjimasi":
          """Podsho ??? Barcha narsani egasi."Malik" haqiqiy egadir.Undan o??zga ega yoqdir.Shuning uchun bandalar faqat unga qul bo??ladilar. Hech vaqtda bir qulga ikki xo??jayin bo??lmaydi.Shuning uchun insonlar o??zlariga o??xshagan insonlarga emas, balki yagona yaratganga, haqiqiy Malikka qul bo??lish lozim.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Qudd??s",
      "tarjimasi":
          """Muqaddas, nuqsonlardan holi ??? Barcha ayblardan xoli, noloyiq sifatlardan munazzah, mutlaq muqaddaslik va mutlaq poklik Allohning o??zigagina hosdir.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "As-Sal??m",
      "tarjimasi":
          """Ofat va balolardan solomat. Qutqarayotgan ??? ???Salom???-barcha nuqsonlardan salomat. Shuningdek, tinchlik, xotirjamlik va rohat beruvchi degani. Alloh ???Salom??? sifati ila bandalarga tinchlik, omonlik, xotirjamlik ato qiladi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Mu???min",
      "tarjimasi": """Mo??min-iymon va omonlik beruvchi.""",
    },
    {
      "arabcha": "??????????????",
      "oqilishi": "Al-Muhaymin",
      "tarjimasi":
          """Hamma narsani qamrab oluvchi.Alloh bandalarning barcha holatlariga guvoh bo??lib turadi.Undan hech narsa maxfiy qolmaydi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Aziz",
      "tarjimasi":
          """Izzat va qudrat sohibi. Ulug?? ??? Barchaning ustidan g??olib. Undan biror narsa g??olib kelolmaydi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Jabb??r",
      "tarjimasi":
          """Bandalarini ishlarini isloh etuvchi. Jabbor ??? oliy qadar ulug??, Uning oldida hamma o??zini xor tutadi.""",
    },
    {
      "arabcha": "??????????????",
      "oqilishi": "Al-Mutakabbir",
      "tarjimasi":
          """Kattalik yarashuvchi zot. Mutakabbir ??? kibriyosi va ulug??ligi behad. Uning oldida boshqalar qul bo??lib turadi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Xoliq",
      "tarjimasi":
          """Yaratuvchi, vujudga keltiruvchi. Xoliq ??? Asli va o??xshashi yoq narsaning o??lchovini mos qilib yaratuvchi. Xoliq mutloq vujudga keltiruvchidir.""",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-B??ri'",
      "tarjimasi":
          """Bori' ??? Yo??qdan paydo qiluvchi, vujudga keltiruvchi, yaratuvchi. Bori???ning vujudga keltirishida tafovut yoqdir.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Musovvir	",
      "tarjimasi": """Maxluqot va mavjudotlarga suvrat va shakl beruvchi.""",
    },
    {
      "arabcha": "???? ????????????",
      "oqilishi": "Al-G??off??r",
      "tarjimasi":
          """G??affor ??? Ko??plab mag??firat qilib, bandalarning aybini o??z fazli ila kechib yuboruvchi. bandalarning aybu nuqsonlari va gunohu ma??siyatlarini fosh qilmay yopib turuvchi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Qohh??r",
      "tarjimasi":
          """Qahhor ??? Barcha maxluqotlarni qabzasida tutib, ularni o??z hukmiga yuritib va qudrati ila bo??ysundirib turuvchi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Vahh??b",
      "tarjimasi": """O??z ne??matlarini tekin ato etuvchi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Ar-Rozz??q",
      "tarjimasi": """Barcha tirik mavjudot rizqini yetkazib beruvchi.""",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Fatt??h",
      "tarjimasi": "Hukm etuvchi, rahmat hazinalarini ochuvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-'Al??m",
      "tarjimasi":
          "Biluvchi, dono, ilm sohibi. Bo??lgan va bo??ladigan, avvalgi va oxirgi, zohir va botin narsalarning barchasini biluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-Qobiz",
      "tarjimasi":
          "Kimlarningdir rizqini qiyuvchi, ruhlarni qabz etuvchi (oluvchi).",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-B??sit",
      "tarjimasi": "Kimlargadir keng rizq beruvchi, ruh baxsh etuvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Xofiz",
      "tarjimasi": "	Kofirlar martabasini tushiruvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Ar-Rofi'",
      "tarjimasi": "Mo??minlar martabasini ko??taruvchi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "Al-Mu???izz",
      "tarjimasi": "Kimlarnidir aziz, qadrli etuvchi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "Al-Muzill",
      "tarjimasi": "Kimlarnidur xoru zalil qiluvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "As-Sam??",
      "tarjimasi":
          "Maxfiy va oshkora gap va sharpalarni, xatto dildan o??tganini ham, eshituvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-Bas??r",
      "tarjimasi": "Hamma maxfiy va oshkora narsalarni ko??ruvchi.",
    },
    {
      "arabcha": "	??????????",
      "oqilishi": "	Al-Hakam",
      "tarjimasi": "Qat??iy hukm etuvchi.",
    },
    {
      "arabcha": "	??????????",
      "oqilishi": "Al-`Adl",
      "tarjimasi": "	O??ta adolatli.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Lat??f",
      "tarjimasi":
          "Bandalariga sezdirmay o??z lutfu ehsonini yetkasizb beruvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-Xob??r",
      "tarjimasi": "Hamma maxfiy va oshkora ishlardan xabardor.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Hal??m",
      "tarjimasi":
          "Jazolashga shoshmaydigan, hilm bilan yaxshilik qilib turuvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-'Az??m",
      "tarjimasi":
          "Azamatli va ulug?? zot. Aql tasavvur qila olmaydigan darajada azamatli va ulug??.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-G??of??r",
      "tarjimasi": "Ko??p mag??firat qiluvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Ash-Shak??r",
      "tarjimasi": "O??z amaliga ko??p savob beruvchi.",
    },
    {
      "arabcha": "	??????????",
      "oqilishi": "	Al-'Aliyy",
      "tarjimasi": "	Martabasi oliylikda benihoya.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Kab??r",
      "tarjimasi": "Hammadan ulug??.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Haf??z",
      "tarjimasi": "	Har bir narsani komil muhofaza qiluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-Muq??t",
      "tarjimasi": "Barcha moddiy va ruhiy rizqlarni yaratuvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	An-Has??b",
      "tarjimasi": "Hisob qiluvchi, kifoya qiluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Jal??l",
      "tarjimasi": "Sifatlarida ulug??likka ega.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Kar??m",
      "tarjimasi":
          "Saxovatli va karami keng. Birov so??ramasa ham, hech bir evaz olmasdan, narsalarni ato qiluvchi. Qarama-qarshilikdan pok. Karamli ishlar va xislatlar sohibi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Ar-Roq??b",
      "tarjimasi":
          "Doimo kuzatib turuvchi. Raqiyb ??? hech bir zararni ham qo??ymay tekshirib turuvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Muj??b",
      "tarjimasi": "Duolarni ijobat qiluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-V??si'",
      "tarjimasi": "Keng va keng qamrovli zotdir",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Hak??m",
      "tarjimasi": "Dono",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Vad??d",
      "tarjimasi": "Bandalarini sevuvchi",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Maj??d",
      "tarjimasi": "Eng ulug??vor",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-B??'is",
      "tarjimasi": "O??liklarning tiriltiruvchisi",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Ash-Shah??d",
      "tarjimasi":
          "	Har bir narsaga hoziru nozir. Barchaga shohidlik beruvchi.",
    },
    {
      "arabcha": "	????????",
      "oqilishi": "Al-Haqq",
      "tarjimasi": "O??zgarmas sobit zot. Haqni yuzaga chiqaruvchi zot.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Vak??l",
      "tarjimasi": "Barchaning ishi unga topshirilgan zot.",
    },
    {
      "arabcha": "	??????????",
      "oqilishi": "Al-Qovviyy",
      "tarjimasi": "Quvvatli zot.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Mat??n",
      "tarjimasi": "Matonatli zot.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "Al-Valiyy",
      "tarjimasi": "Himoya qiluvchi do??st, homiy va yordamchi",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Ham??d",
      "tarjimasi": "Barcha maqtovlar ila maqtalgan zot.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Muhsi",
      "tarjimasi": "Barcha narsaning hisobini olgan zot.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Mubdi'",
      "tarjimasi": "Barcha narsalarni avval boshdan bor qilgan zot.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Mu'??d",
      "tarjimasi": "Yo??q bo??lgan narsalarni yana qaytadan bor qiluvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Muhyi",
      "tarjimasi":
          "Tiriltiruvchi. U zot o??liklarni tiriltiruvchidir va bu ismga ularni tiriltirishdan oldin sazovordir. Uni ularni o??lik bo??lganlaridan keyin jon kiritib tirik qilganidan keyin tiriltiruvchi, deb atalganidek, ularni xalq qilishdan oldin, ularga hayot berishidan oldin ham, tiriltiruvchi, deyilaveradi. Xuddi, xaloyiqni xalq qilishidan oldin Xoliq bo??lganidek.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-Mum??t",
      "tarjimasi": "O??ldirivchi. Barcha jonzotlarning jonini oluvchi.",
    },
    {
      "arabcha": "????????",
      "oqilishi": "Al-Hayy",
      "tarjimasi":
          "Tirik. U tirikdir, o??lmas. Ya??ni, Allohning hayoti abadiydir, o??lim ila yo??q bo??lmas. Shuningdek, Allohning hayoti azaliydir, oldindan yo??q bo??lgan emas.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Qoyy??m",
      "tarjimasi": "O??z o??zidan qoim bo??lgan va boshqalarni qoim qilgan zot.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-V??jid",
      "tarjimasi":
          "	Topuvchi. Xohlagan narsasini topuvchi. Bu ishda birov Uni to??sa olmaydi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-M??jid",
      "tarjimasi": "	Majdu sharaf sohibi bo??lgan zot.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Al-V??hid",
      "tarjimasi":
          "Yagona. Bita. Bo??linmas. U zot o??z zotida ham, sifatlarida ham va ishlarida ham birdir.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "As-Somad",
      "tarjimasi":
          "Somad sifati ko??p ma??nolarni o??z ichiga oladi:- itoat qilingan ulug??-Usiz hech bir ish bitmaydi.- hech kimga hojati tushmaydi, barchaning hojati Unga tushadi.- butun maxluqot bitib tugasa ham, O??zi doim boqiydir va hokazo.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Qodir",
      "tarjimasi":
          "Cheksiz qudrat sohibi. U zot har bir narsaga qodirdir. har bir ish unga osondir.",
    },
    {
      "arabcha": "	??????????????",
      "oqilishi": "Al-Muqtadir",
      "tarjimasi": "	Juda ham qudratli.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-Muqoddim",
      "tarjimasi":
          "Oldinga suruvchi. U zot xohlagan shaxs va narsani xohlaganidan oldinga suradi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Mu???axxir",
      "tarjimasi":
          "Orqaga suruvchi. U zot xohlagan shaxs va narsani xohlaganidan orqaga suradi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "Al-'Avval",
      "tarjimasi":
          "	???Avval??? ??? U hamma narsadan avval, ya??ni, barcha mavjudotlar yo??qligida Alloh bor edi. Mavjudotlarni ???Avval??? sifatiga ega bo??lgan Alloh yaratdi. Ya??ni, Alloh vujudga kelishining boshlanishi yo??qdir.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "	Al-'Axir",
      "tarjimasi":
          "	???Oxir??? ??? U hamma narsa yo??q bo??lib ketganda ham O??zi qoladi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Az-Zohir",
      "tarjimasi":
          "???Zohir??? ??? Uning mavjudligi oshkor, ochiq-oydindir. U hamma narsadan zohir-ustundir.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-B??tin",
      "tarjimasi":
          "Botin ??? U ko??zga ko??rinmaydi. Hammadan pinhon-maxfiy narsalarni bilib turuvchidir.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-V??li",
      "tarjimasi": "Har bir narsaga voliy ??? ega bo??lgan zot.",
    },
    {
      "arabcha": "????????????????",
      "oqilishi": "Al-Mut??'ali",
      "tarjimasi": "Nuqsonlardan yuqori turuvchi zot.",
    },
    {
      "arabcha": "????????",
      "oqilishi": "Al-Barr",
      "tarjimasi": "Ulug?? yaxshilik qiluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "At-Tavv??b",
      "tarjimasi":
          "Bandalarni tavbaga yo??llovchi va ularning tavbasini ko??plab qabul qiluvchi zot.",
    },
    {
      "arabcha": "??????????????",
      "oqilishi": "Al-Muntaqim",
      "tarjimasi": "Zolim va osiylardan intiqom oluvchi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "Al-Afuvv",
      "tarjimasi": "Afv qiluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Ar-Ro????f",
      "tarjimasi": "O??ta shafqatli va mehribon.",
    },
    {
      "arabcha": "???????? ??????????",
      "oqilishi": "M??lik-ul-Mulk",
      "tarjimasi":
          "Mulk egasi. Bu dunyodagi ishlarni o??zi xohlaganicha qiladi. Uning qazosini qaytaradigan va hukmini o??zgartiradigan yo??q.",
    },
    {
      "arabcha": "???? ???????????? ????????????????",
      "oqilishi": "Z??l-Jal??li val???ikrom",
      "tarjimasi": "Sharaf va kamol egasi. Karam va ikrom egasi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Muqsi??",
      "tarjimasi":
          "	O??z adolati ila mazlumlarga nusrat va zolimlarga jazo beruvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-J??mi",
      "tarjimasi":
          "Jamlovchi. Barcha haqiqatlarni jamlovchi. Odamlarni qiyomat kuni jamlovchi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "	Al-G??oni",
      "tarjimasi": "Behojat. Uning hech kim va hech narsaga hojati tushmaydi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-Mug??ni",
      "tarjimasi":
          "Behojat qiluvchi. U zot O??z bandalaridan qay birini xohlasa behojat qilib qo??yadi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-M??ni'",
      "tarjimasi": "Man qiluvchi.",
    },
    {
      "arabcha": "	??????????",
      "oqilishi": "	Az-Zorr",
      "tarjimasi": "Zarar qiluvchi. Zararli narsalarni ham yaratuvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "An-N??fi",
      "tarjimasi": "Manfaat beruvchi.",
    },
    {
      "arabcha": "??????????",
      "oqilishi": "An-N??r",
      "tarjimasi": "O??z-o??zi ila zohir bo??lgan va o??zgalarni zohir qilgan.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "Al-H??di",
      "tarjimasi":
          "Hidoyat qiluvchi. U zot O??z fazli ila xohlagan kimsani hidoyat qiladi. Ya??ni, Alloh kimni to??g??ri yo??lga hidoyat qilsa, albatta, O??z xohishi va fazli ila hidoyat qiladi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-Bad??",
      "tarjimasi": "	O??xshashi yo??q narsalarni keltiruvchi.",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "	Al-B??qi",
      "tarjimasi":
          "Boqiy qoluvchi. U doimiy bordir, unga foniylik oriz bo??lmas",
    },
    {
      "arabcha": "	????????????",
      "oqilishi": "Al-V??ris",
      "tarjimasi": "Muvjudotlar yo??q bo??lganda ham boqiy qoluvchi zot.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "	Ar-Rosh??d",
      "tarjimasi": "To??g??ri yo??lga irshod qiluvchi.",
    },
    {
      "arabcha": "????????????",
      "oqilishi": "As-Sobur",
      "tarjimasi": "O??ta sabrli. Osiylarni azoblashga shoshilmaydi.",
    },
  ];
}
