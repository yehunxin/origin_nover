import 'dart:convert';

import 'package:json_path/json_path.dart';
import 'package:origin_novel/utils/log_utils.dart';

void main() {
  var jsonString = r'''{
  "code": 0,
  "msg": "",
  "data": {
    "state": [
      {
        "id": 0,
        "moduleReportID": "",
        "groupID": "novel_search_guide",
        "moduleName": "NotSupport",
        "dataName": "novel_search_guide",
        "dataID": "",
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 1,
        "AG_INDEX": 1,
        "D_INDEX": "",
        "BIG_CARD": "",
        "RES_TYPE_ID": 838,
        "items": []
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1124017924",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 2,
        "AG_INDEX": 2,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1124017924",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "夫人你马甲又掉了",
            "abstract": "\"【本文专注扒马，女主帅，男主炸，身份多重，双宠+爽文+微科幻+无逻辑】\n秦苒，从小在乡下长大，高三失踪一年，休学一年。\n一年后，她被亲生母亲接到云城借读。\n母亲说：你后爸是名门之后，你大哥自小就是天才，你妹妹是一中尖子生，你不要丢他们的脸。\n**\n京城有身份的人暗地里都收到程家太子爷的警告：隽爷老婆是普通人，不懂京城规矩……脾气还不好。\n直到一天，调查某个大佬时，他的手下望着不小心扒出来的据说什么都不懂的小嫂子的其中一个马甲……陷入迷之沉默。\"",
            "cover_url": "https://qbnovel.qq.com/static/b72807f97816002879daf83abc3d72b2b9da14562fbbc67cd0f63859da1b3d0b",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1124017924&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 女强 爽文",
            "is_finished": 1,
            "author": "一路烦花",
            "adfree": "1",
            "label_text": "独家免费",
            "I_INDEX": 0,
            "G_INDEX": 2,
            "AG_INDEX": 2,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5250,
        "moduleReportID": "",
        "groupID": "tabpage_hub_novel_search_recomm_3",
        "moduleName": "NovelCustomize",
        "dataName": "novel_search_recomm_list",
        "dataID": 370,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 3,
        "AG_INDEX": 3,
        "D_INDEX": "",
        "RES_TYPE_ID": 839,
        "contentType": "novel-comstomize",
        "items": [
          {
            "docId": "90000001_1135445815",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "慕爷，团宠夫人又掉马了",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1135445815&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "cover_url": "https://qbnovel.qq.com/static/e276a4570f57af495cde097526f4f41c234b9f5619a24737eac9512e79ce13ae",
            "author": "叶星辰",
            "customizeTitle": "看过这本书的还在看",
            "label_text": "整本免费",
            "adfree": "1",
            "I_INDEX": 0,
            "G_INDEX": 3,
            "AG_INDEX": 3,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 839,
            "dataName": "novel_search_recomm_list",
            "subText": [
              "叶星辰"
            ],
            "iconUrl": "https://qbnovel.qq.com/static/e276a4570f57af495cde097526f4f41c234b9f5619a24737eac9512e79ce13ae",
            "jumpUrl": "qb://ext/novelreader?mode=normal&bookId=1135445815&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010"
          },
          {
            "docId": "90000001_1139935068",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "傅爷的小祖宗是个马甲精",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1139935068&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "cover_url": "https://qbnovel.qq.com/static/a189e2802504efc84d6fe6c9e48b9a6c3ec2893d3a88067826f977c995684425",
            "author": "梁上小先生",
            "I_INDEX": 1,
            "G_INDEX": 3,
            "AG_INDEX": 3,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 839,
            "dataName": "novel_search_recomm_list",
            "subText": [
              "梁上小先生"
            ],
            "iconUrl": "https://qbnovel.qq.com/static/a189e2802504efc84d6fe6c9e48b9a6c3ec2893d3a88067826f977c995684425",
            "jumpUrl": "qb://ext/novelreader?mode=normal&bookId=1139935068&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010"
          },
          {
            "docId": "90000001_1135176946",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "顾爷，夫人的马甲又轰动全球了！",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1135176946&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "cover_url": "https://qbnovel.qq.com/static/d605d53d4d937747fdf1dabf1a510a02f6d95da8676c9b1085b833cb972ca085",
            "author": "飞絮如梦",
            "I_INDEX": 2,
            "G_INDEX": 3,
            "AG_INDEX": 3,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 839,
            "dataName": "novel_search_recomm_list",
            "subText": [
              "飞絮如梦"
            ],
            "iconUrl": "https://qbnovel.qq.com/static/d605d53d4d937747fdf1dabf1a510a02f6d95da8676c9b1085b833cb972ca085",
            "jumpUrl": "qb://ext/novelreader?mode=normal&bookId=1135176946&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010"
          },
          {
            "docId": "90000001_3000043255",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "九爷，夫人又掉马甲了",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=3000043255&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "cover_url": "https://qbnovel.qq.com/static/b4ebb89edfa5e040fc7f0298cc53893dc9e72d58657ba67b2886c8d1aaa8a325",
            "author": "陌小七",
            "I_INDEX": 3,
            "G_INDEX": 3,
            "AG_INDEX": 3,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 839,
            "dataName": "novel_search_recomm_list",
            "subText": [
              "陌小七"
            ],
            "iconUrl": "https://qbnovel.qq.com/static/b4ebb89edfa5e040fc7f0298cc53893dc9e72d58657ba67b2886c8d1aaa8a325",
            "jumpUrl": "qb://ext/novelreader?mode=normal&bookId=3000043255&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010"
          },
          {
            "docId": "90000001_1143912914",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "真千金马甲又轰动全球了",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1143912914&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "cover_url": "https://qbnovel.qq.com/static/698376baa638d337b3ff2c94b331a5ace0ea27376cbe5bb8767c2a8875441f8b",
            "author": "言小晚",
            "I_INDEX": 4,
            "G_INDEX": 3,
            "AG_INDEX": 3,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 839,
            "dataName": "novel_search_recomm_list",
            "subText": [
              "言小晚"
            ],
            "iconUrl": "https://qbnovel.qq.com/static/698376baa638d337b3ff2c94b331a5ace0ea27376cbe5bb8767c2a8875441f8b",
            "jumpUrl": "qb://ext/novelreader?mode=normal&bookId=1143912914&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010"
          }
        ],
        "searchWord": [],
        "recallWord": "",
        "adfree": "1",
        "tagText": "整本免费",
        "customizeTitle": "看过这本书的还在看"
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1113648272",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 4,
        "AG_INDEX": 4,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1113648272",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "许你万丈光芒好",
            "abstract": "\"“你救了我，我让我爹地以身相许！”\n宁夕意外救了只小包子，结果被附赠了一只大包子。\n婚后，陆霆骁宠妻如命千依百顺，虐起狗来连亲儿子都不放过。\n“老板，公司真给夫人拿去玩？难道夫人要卖公司您也不管？”“卖你家公司了？”\n“大少爷，不好了！夫人说要把屋顶掀了！”“还不去帮夫人扶梯子。”\n“粑粑，谢谢你给小宝买的大熊！”“那是买给你妈妈的。”\n“老公，这个剧本我特别喜欢，我可以接吗？”陆霆骁神色淡定：“可以。”\n当天晚上，宁夕连滚带爬跑出去。陆霆骁！可以你大爷！！！\"",
            "cover_url": "https://qbnovel.qq.com/static/9776682c47b9fcfff4c85046dc55ca0fd848ccb02097218ef3b9414347e4ff80",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1113648272&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 甜宠 明星",
            "is_finished": 1,
            "author": "囧囧有妖",
            "adfree": "1",
            "label_text": "独家免费",
            "I_INDEX": 0,
            "G_INDEX": 4,
            "AG_INDEX": 4,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 0,
        "moduleName": "NovelGuid",
        "dataName": "NovelGuid"
      },
      {
        "id": 0,
        "moduleReportID": "",
        "groupID": "NovelGuid",
        "moduleName": "NotSupport",
        "dataName": "NovelGuid",
        "dataID": "",
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 5,
        "AG_INDEX": 5,
        "D_INDEX": "",
        "BIG_CARD": "",
        "RES_TYPE_ID": 838,
        "items": []
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1120829464",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 6,
        "AG_INDEX": 6,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1120829464",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "你是我的难得情深",
            "abstract": "一时不防被算计，嫁给坐在轮椅上的顾大少，本以为白天有钱，晚上有闲，哪知道天天被奴役到腰酸背痛腿发软。\n 叶北北拍桌:“骗子，我要离婚!”\n 顾大少将萌宝推到身前:“孩子都有了还想离婚?老婆大人你醒醒！”\n 叶北北看着和她一模一样的萌宝一脸懵圈。\n 谁能告诉她，孩子哪来的?！",
            "cover_url": "https://qbnovel.qq.com/static/3279acddc00ea175f95994f193236ddefc479fc29ff0774626c5ef8267c7b235",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1120829464&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 总裁 甜宠",
            "is_finished": 1,
            "author": "江流云",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 6,
            "AG_INDEX": 6,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1137094496",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 7,
        "AG_INDEX": 7,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1137094496",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "大秦：不装了，你爹我是秦始皇",
            "abstract": "\"赵浪一觉醒来，发现自己来到了秦朝。\n好在家境还算富裕。\n只是算了算时间，大秦只有三年的寿命，赵浪便鼓起勇气，和自己那几个月才回来一次的便宜老爹说道，\n“爹，始皇帝三年之后必死，大秦将亡，到时候天下大乱，我们早做准备造反吧！”\n便宜老爹先是一愣，随后点头同意。\n赵浪顿时兴教育，练新军。\n就当他羽翼丰满，准备天下争雄时。\n便宜老爹突然来到了他的面前，\n“不装了，摊牌了，你爹我是秦始皇。”\"",
            "cover_url": "https://qbnovel.qq.com/static/1b62bcfb65f8a694a0bebd10f63c2d452b06448f6de4837c1d1982927713c86a",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1137094496&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "历史 秦汉 反套路",
            "is_finished": 1,
            "author": "头顶一只喵喵",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 7,
            "AG_INDEX": 7,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1100454426",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 8,
        "AG_INDEX": 8,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1100454426",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "致我最爱的你",
            "abstract": "本书已出版上市，书名《致我最爱的你》，签名版当当有哦，速度去抢咯~\r\n\r\n“老公，我今晚肚子有些不舒服，求休假！”\r\n“老公，我今晚好像有点感冒了，求休假！”\r\n“老公，我今晚要去朋友家陪她，求休假！”\r\n结婚前的顾倾城，总想着怎样推到唐时。\r\n结婚后的顾倾城，却想着怎样让唐时放过她一晚。\r\n然而事实证明，不管她找出的借口有多无敌，他总是可以轻而易举的化解。\r\n“老公，我现在在马尔代夫，今晚你好好看家！”既然躲不过，那她跑~\r\n竟然想擅作主张给自己放假？\r\n唐时沉思了一下，对着助理吩咐了两句。\r\n当晚午夜十二点，酒店的门被人敲响，隔着门板顾倾城听见唐时的声调轻飘飘的传来：“老婆，开门。”",
            "cover_url": "https://qbnovel.qq.com/static/08bbf8118490ee2b7f25ab6b291d85e15bc18058acf521f84a268a45c3b8c29c",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1100454426&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 总裁 先婚后爱",
            "is_finished": 1,
            "author": "叶非夜",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 8,
            "AG_INDEX": 8,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1116204776",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 9,
        "AG_INDEX": 9,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1116204776",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "缠腰吻！被禁欲贺总明撩暗钓（又名：亿万星辰不及你）",
            "abstract": "“一年后，我们离婚，互不干扰。”\r\n季忆之所以答应贺季晨假结婚，是因为她坚信完美情人贺季晨绝对不会爱上她。\r\n婚后假戏真做不说，一年后，别说是离婚，就连离家都没门。惹不起，我跑还不行？季忆爬窗离家出走。\r\n就在她沾沾自喜的以为自己终于逃出魔爪的第二天，她走到哪里，都有人弯腰对着她说：贺太太，贺先生在那里等你。\r\n-\r\n原书名《大神引入怀》（同名漫画7月28日上线，欢迎大家观看！）",
            "cover_url": "https://vfiles.gtimg.cn/wupload/xy/qb_novel/%E7%BC%A0%E8%85%B0%E5%90%BB.jpg",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1116204776&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 甜宠 总裁",
            "is_finished": 1,
            "author": "叶非夜",
            "adfree": "1",
            "label_text": "独家免费",
            "I_INDEX": 0,
            "G_INDEX": 9,
            "AG_INDEX": 9,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1144328513",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 10,
        "AG_INDEX": 10,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1144328513",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "娱乐：我把你当姐，你却想泡我？",
            "abstract": "\"姜阎穿越到平行世界生活在孤儿院，两岁那年被人领养，从此多了个倾国倾城，立志要成明星的邻家姐姐。\n什么？\n姐姐被骂只是个花瓶？\n没关系，老弟带你躺赢！\n一首《爱你》，姐姐火爆全网！\n一部《仙剑奇侠传》，成功掀起仙侠剧热潮，姐姐被誉为最美唐雪见！\n姜阎本想着随便捧捧姐姐，谁知道不小心创建了一个娱乐帝国！\n某天，百亿票房女演员姐姐和身价早已经是全球首富的姜阎接受采访。\n当记者聊起两人关系时！\n“其实我跟老姐...”\n姜阎还没说完，姐姐一把抢过话筒。\n“摊牌了，老公，我们结婚吧！”\n姜阎：“？？？”\n我把你当姐，你竟然想泡我？！\"",
            "cover_url": "https://qbnovel.qq.com/static/ecebf9619cf8e8e066f20d2470a16da996c43f814e239dbb14c8ba5adfe1631e",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1144328513&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "都市 穿越 文娱",
            "is_finished": 0,
            "author": "脱寒",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 10,
            "AG_INDEX": 10,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1141140030",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 11,
        "AG_INDEX": 11,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1141140030",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "徒儿，下山祸害你师姐去吧",
            "abstract": "徒儿，下山去找你师姐吧，让她教你摸骨神医，弘扬道法，楚亦如愿以偿，妹纸！我来了！只是……",
            "cover_url": "https://qbnovel.qq.com/static/e1410705ff284915e0114e2596cb6b110a2aae5edc3d92c87b575a3d386354ff",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1141140030&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "都市 无敌流 扮猪吃虎",
            "is_finished": 0,
            "author": "鳄鱼皮带",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 11,
            "AG_INDEX": 11,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1136158924",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 12,
        "AG_INDEX": 12,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1136158924",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "你好，1983",
            "abstract": "\"你好，1983！我回来了！\n我的亲人，我的伙伴，我的家乡，一切因我而改变……\"",
            "cover_url": "https://qbnovel.qq.com/static/cafef889211530af290ec0f3237dcd0d4378fc426cfa3c56693ab83aa736e899",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1136158924&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "都市 赚钱 重生",
            "is_finished": 1,
            "author": "隐为者",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 12,
            "AG_INDEX": 12,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1143960112",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 13,
        "AG_INDEX": 13,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1143960112",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "神印之你的全职骑士",
            "abstract": "\"圣魔大陆，七十二魔神！\n皓晨团就是太子团。\n主角呢，带着五个渣仔，无奈，刺客技能学一些，召唤术学一些……\n原本说技多不压身。\n没想到，却惊艳了队友……\n提醒：本书纯粹是新书，不要求每一位读者都喜欢，站点几百万书，不喜欢的可以换书看。有建议的请委婉一些，作者也知道自身不足，别特意给我一星影响作者创作的心情，作者也需要关怀的，谢谢！\"",
            "cover_url": "https://qbnovel.qq.com/static/6d055156713ae9216370db22d978132aa52c0de858f02884310a9b1e710c009b",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1143960112&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "奇幻 穿越 轻松",
            "is_finished": 1,
            "author": "耕者忘其耕",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 13,
            "AG_INDEX": 13,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1144069755",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 14,
        "AG_INDEX": 14,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1144069755",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "媚娘，我是假太监，你还让我侍寝",
            "abstract": "穿越平行时空的大唐，赵无疆也没想到，自己成了假太监，还混进了武媚娘寝宫。\n本来以为是九死一生的开局。\n可没想到……\n武媚娘：“小赵子，你替本宫好好监视皇上，本宫重重有赏！”\n唐高宗：“小赵子，你替朕好好监视王皇后，朕重重有赏！”\n王皇后：“小赵子，你替本宫好好监视武媚娘，本宫以后就是你的！”\n【恭喜宿主激活‘对不起，我是卧底’任务X3】\n【恭喜宿主获得绝学《葵花宝典》】\n赵无疆：“？？？”",
            "cover_url": "https://qbnovel.qq.com/static/9c013c9e00eab2088f04f94ee0a85b16eda2ada286bd95c79dc9ea75bb2f371b",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1144069755&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "历史 架空历史 唐朝",
            "is_finished": 0,
            "author": "天上小凤凰",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 14,
            "AG_INDEX": 14,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1143719885",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 15,
        "AG_INDEX": 15,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1143719885",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "疯了吧！你真是御兽师？",
            "abstract": "\"这是一个山川，河流，草木，动物，机械，死灵，元素……都能成为战兽的世界。\n这是一个以御兽师为主流的世界。\n九天之上扶摇的星辰龙雀。\n雷云中挥舞长鞭的电光精灵。\n海洋深处盘踞山海的瀚海巨鲸。\n不灭烛火里跳跃的焰影鬼灵。\n方木翻动着手中的星空之书，在这片广袤的御兽世界中缔造了一个又一个的神话。 \n走上了一条独属于自己的缔造师之路。\"",
            "cover_url": "https://qbnovel.qq.com/static/18e25cabbc74d681c01fbe2c614abfca94030cb216dbf84aeda6b742356882e3",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1143719885&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "奇幻 进化 御兽流",
            "is_finished": 1,
            "author": "玛瑙蜜瓜",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 15,
            "AG_INDEX": 15,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1144346293",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 16,
        "AG_INDEX": 16,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1144346293",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "让你当义务兵，你竟成特战之王",
            "abstract": "\"陈然重生成为一个富家弟子，因为不务正业，被小姨带去部队锻炼。\n天赋签到系统开启，只要满足签到条件，就能激活天赋技能，每一种天赋都是天赋异禀的S级，帮助陈然在特战的世界中不断获得军功，一路高歌猛进\nS级格斗天赋：一个挑战十个起步。\nS级爆破天赋：宿主就成为爆破专家，拆弹专家，宿主即将成为这个行业的翘楚……\nS级极限天赋：就是无限地激发身体的潜能，使身体机能自动地根据所处环境进行调节，这样就可以让人不管身处多么恶劣的环境下，都能生存下来\"",
            "cover_url": "https://qbnovel.qq.com/static/13189e9ff11ded719c89825889c381615a829556549d5196a0dc8ab25b73ba4d",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1144346293&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "军事 系统流 重生",
            "is_finished": 1,
            "author": "小小燕草",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 16,
            "AG_INDEX": 16,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1144377804",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 17,
        "AG_INDEX": 17,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1144377804",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "让你修车，你改成了变形金刚？",
            "abstract": "穿越平行世界，唐威成了一个汽修店的小老板。\n正当他烦恼该怎么干好修车的工作时，【超级改装系统】觉醒。\n于是…\n“师傅，修个摩托，给我搞得安全一点。”\n 第二天，一条“摩托车撞翻大货车，车主安然无恙”的新闻上了热搜。\n“师傅，我的电瓶车总是只能跑两个小时就没电了，看看是不是电瓶坏了？”\n  唐威直接将电瓶换成了微型核动力装置！\n  “儿子，你的修车技术不错啊，帮爸修修这辆破面包车呗！”\n  看着自己的车站起来变成了汽车人，唐威父亲懵了。\n  “让你修车，给我改装成了变形金刚？”\n  ",
            "cover_url": "https://qbnovel.qq.com/static/c6e5e96bf1374ce7f71af18723e5fbaefcd5812e1c648a8f11ff6330971632cc",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1144377804&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "都市 穿越 无敌流",
            "is_finished": 1,
            "author": "网购一条秋裤",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 17,
            "AG_INDEX": 17,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1141923026",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 18,
        "AG_INDEX": 18,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1141923026",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "群演的快乐你想象不到",
            "abstract": "\"多年后有记者问:您捧出的影帝影后也超两位数，可为什么您还要做群演呢，是为了让自己不忘初心么？\n江炎笑了笑。\n因为做了群演才有了一切。\n而且，只有穿上戏服，才能去往那个世界。\n在那里，他曾目睹山河破碎。\n也曾历经江湖的刀光剑影。\n曾和李白喝过酒。\n也和七仙女摘过桃。\n他曾掌过天下权，也曾上九天揽过月。\n所以。\n“群演的快乐，你想象不到。”\n本文华娱为主，不搞时间管理，不架空（如有雷同，纯属巧合）\"",
            "cover_url": "https://qbnovel.qq.com/static/70c55f9d64491120b31d12480d63f7a8024ddbb146757cdc1c1b57d4fa2526c0",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1141923026&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "都市 文娱 轻松",
            "is_finished": 1,
            "author": "笔名帅不帅",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 18,
            "AG_INDEX": 18,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1143940039",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 19,
        "AG_INDEX": 19,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1143940039",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "你们练武我读书",
            "abstract": "\"“书读百遍，其义自见！”\n“书中自有黄金屋，书中自有颜如玉！古人诚不欺我！”\n阅读《倚天屠龙记》，获得武学：九阳神功！\n阅读《天龙八部》，获得武学：降龙十八掌！\n“阅读《阳神》，获得道术：过去弥陀经，获得武学：诸天生死轮！”\n“好烦！”\n\n“这修仙的功法也太难获得了吧，西游记我都看了十八遍了，一个七十二变刷不出来？”\n（PS：本书又名《前方大夏，神灵禁行》、《原来小说中的功法都是真的》。）\"",
            "cover_url": "https://qbnovel.qq.com/static/b4bca5c45dc5d7688222084ee4d014416ec9919d15f5e43216b395a7d82a5c54",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1143940039&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "诸天无限 无敌流 轻松",
            "is_finished": 1,
            "author": "布里包子",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 19,
            "AG_INDEX": 19,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1144190532",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 20,
        "AG_INDEX": 20,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1144190532",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "大明：让你励精图治，你去养生？",
            "abstract": "\"穿越大明，附身朱棣长孙朱瞻基。\n被寄予厚望的好圣孙朱瞻基，面对自己短寿的结局，表示：你们爱干嘛干嘛，反正皇位都是我的，我要去养生，谁也别拦着！\n阵前大将：报！马哈木率军来袭，太孙殿下引兵作战！\n阵前大将：报！太孙殿下势如破竹，斩杀敌军前军大将！\n阵前大将：报！太孙殿下退了！\n朱棣一惊：我孙儿为何要退？\n大将犹犹豫豫道：太孙说，说，，他要午休.... \n闻言，军中众将一惊。\n朱棣一拍额头，揉着太阳穴：明，明日再战，鸣金收兵！\n一旁随军太监起身：陛下，明日.....\n朱棣皱眉：明日怎么了？\n随军太监：明日周末，太孙双休..... \n朱棣大怒：这个小......\"",
            "cover_url": "https://qbnovel.qq.com/static/a303c7fb56deade8710d2213e08e66674b0ca3fa96280db4ae3f6f91670a6d4f",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1144190532&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "历史 明朝 穿越",
            "is_finished": 1,
            "author": "自知自明",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 20,
            "AG_INDEX": 20,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1143771557",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 21,
        "AG_INDEX": 21,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1143771557",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "狼人杀：请开始你的表演",
            "abstract": "\"【逻辑和推理的挑战，谎言和伪装的盛宴】\n【高质量对局，教科书式的发言】\n一觉醒来，顾风穿越到了一个只属于狼人杀的世界。\n在这里，唯有逻辑大神才能生存。\n光明和黑暗的较量，正义与邪恶的对决。\n人狼之战，一触即发。\n错综复杂的局势，千奇百怪的套路，五花八门的板子。\n冲锋、倒钩、垫飞……狼人无所不用其极。\n抽丝剥茧，好人是否能拨开迷雾，堪破一切。\n天黑请闭眼！\n天亮了。\n接下来，请开始你的表演。\"",
            "cover_url": "https://qbnovel.qq.com/static/61c7cc55fade70f4cd41a9d275e41dd22b916b532cbe251badc36abc4f6f8fa6",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1143771557&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "游戏竞技 策略流 智斗",
            "is_finished": 1,
            "author": "辣椒炒果米",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 21,
            "AG_INDEX": 21,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1125680570",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 22,
        "AG_INDEX": 22,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1125680570",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "余生有你，甜又暖",
            "abstract": "刚发现自己会被裴聿城的意识附身时，林烟是拒绝的。\n明明在酒吧蹦迪，一醒来，躺在了荒郊野岭。\n明明在家里打游戏，一醒来，站在了欧洲大街。\n明明在跟男神烛光晚餐，一醒来，站在了男洗手间。\n这日子没法过了！\n后来的林烟——\n“大佬求上身，帮我写个作业！”“大佬求上身,帮我考个试！”“大佬求上身，帮我追个男神！”“大佬,听说生孩子挺疼的，等日后我生孩子的时候，不如你……”\n裴聿城：“……”",
            "cover_url": "https://qbnovel.qq.com/static/406e6be79128967672a7a195d259c78d78812f8d5a2dcc16023b6be71e1ff853",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1125680570&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 灵魂转换 职场商战",
            "is_finished": 1,
            "author": "囧囧有妖",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 22,
            "AG_INDEX": 22,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 5230,
        "moduleReportID": "",
        "groupID": "90000001_1125697936",
        "moduleName": "NovelAggregation",
        "dataName": "novel_search_list",
        "dataID": 360,
        "with_spliter": 0,
        "dataExt": "",
        "requestID": "d71e64c26587cba6613f705dffefba80_0_63141644",
        "reportInfo": {},
        "G_INDEX": 23,
        "AG_INDEX": 23,
        "D_INDEX": "",
        "RES_TYPE_ID": 838,
        "items": [
          {
            "docId": "90000001_1125697936",
            "recallWord": "",
            "matchTerms": [
              "你",
              "您",
              "祢"
            ],
            "searchWord": [
              "你",
              "您",
              "祢"
            ],
            "reportInfo": {},
            "title": "我的房分你一半",
            "abstract": "离家出走的陈恩赐，第一次见到秦孑，把他错认为了房东：“租你的房和床！”\r\n住进秦孑家的陈恩赐，半夜肚子饿了，敲响了秦孑的房门：“租锅碗瓢盆！”\r\n一个月后，陈恩赐看到秦孑领回家一个漂亮的女生，在门口转了半天，然后就咚咚咚的拍向了秦孑的房门：“租洗手间洗面奶沐浴乳！”\r\n半年后，陈恩赐喝醉了酒，借着微醺的酒劲，晃晃悠悠的扑进了秦孑的怀里：“租……你！”\r\n...\r\n我们都活成了我们当初梦想中的样子。\r\n我们都还没忘记彼此。\r\n本书又名《银河之上的你》",
            "cover_url": "https://qbnovel.qq.com/static/adf9d5a5eab8aa74cc7bc03e2aad2fbdf0a327b6f86123e6de371acf48548b6a",
            "jump_url": "qb://ext/novelreader?mode=normal&bookId=1125697936&module=novelReader&component=novelReader&banner_intro_show=1&ch=006278&traceid=5010",
            "tag_views": "现代言情 破镜重圆 甜宠",
            "is_finished": 1,
            "author": "叶非夜",
            "adfree": "1",
            "label_text": "整本免费",
            "I_INDEX": 0,
            "G_INDEX": 23,
            "AG_INDEX": 23,
            "moduleReportID": "",
            "D_INDEX": 0,
            "RES_TYPE_ID": 838
          }
        ],
        "searchWord": [
          "你",
          "您",
          "祢"
        ],
        "recallWord": ""
      },
      {
        "id": 0,
        "moduleName": "Footer",
        "dataName": ""
      }
    ],
    "cookieItem": {
      "bye": {
        "iIsEnd": 1
      },
      "card_exposed_count": 23,
      "session_id": "d71e64c26587cba6613f705dffefba80",
      "request_id": "d71e64c26587cba6613f705dffefba80_0_63141644",
      "uuid_sogou_huichuan_weibo": "5c625106-4f89-477e-84ac-36876f0cc392"
    },
    "tabId": "360",
    "ajaxPerfInfo": "299|291",
    "tokenParams": {},
    "notShowTabModule": true,
    "r": null
  }
}''';
  final rule = {
    "author": r"$..author",
    "bookList": r"$.data.state[*]",
    "bookUrl":
        "https://novel.html5.qq.com/qbread/api/novel/bookInfo?resourceId={{book.kind}}",
    "coverUrl": r"$..cover_url",
    "intro": r"$..abstract",
    "kind": r"$.groupID##.*_##",
    "name": r"$..title",
    "checkKeyWord": ""
  };

  final authorJsonPath = JsonPath(rule['author']!);
  authorJsonPath
      .read(jsonDecode(jsonString))
      .map((e) => e.value)
      .forEach((element) {
    LogUtils.d(element);
  });
  final bookListJsonPath = JsonPath(rule['name']!);
  bookListJsonPath
      .read(jsonDecode(jsonString))
      .map((e) => e.value)
      .forEach((element) {
    LogUtils.d(element);
  });
}
