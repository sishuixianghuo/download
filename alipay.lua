local thread = require('TSLib')
 
aliPayPkg = "com.eg.android.AlipayGphone"
aliLogin = ".AlipayLogin"
aliApp = "com.alipay.android.phone.home.appgroup.AppGroupActivity"
aliH5 = "com.alipay.mobile.nebulacore.ui.H5Activity"

local count = 0


function counter()
    count= count+1
    if count>10 then
       -- tap(500,60)
--        moveTo(200,49,1002,49,50,50)
os.execute("input  swipe  0  200   1070  200  ")
        count = 0
    end
end
function loadAll()-- 展开所有好友 
    moveTo(500,1800,500,200)
    x,y = findMultiColorInRegionFuzzy( 0xe5e5e5, "406|0|0xe5e5e5,945|0|0xe5e5e5,996|-74|0x30bf6c,848|-78|0x30bf6c,528|46|0x333333,486|49|0x333333", 90, 0, 200, 1079, 1919)
    while x==-1 do 
        moveTo(500,1800,500,200,100)
        x,y = findMultiColorInRegionFuzzy( 0xe5e5e5, "406|0|0xe5e5e5,945|0|0xe5e5e5,996|-74|0x30bf6c,848|-78|0x30bf6c,528|46|0x333333,486|49|0x333333", 90, 0, 200, 1079, 1919)
        sysLog("++++loadAll")
    end 
end

function back()
    tap(59,  129)
end

-- 收集能量 
function collect()
    sysLog("++++collect")
    mSleep(3000)
    tx,ty = findMultiColorInRegionFuzzy( 0xcaff2c, "-58|14|0xf4ffdf,24|91|0xd2f37d,35|6|0xcbff30,-48|83|0xb3eb27,54|150|0xffffff,52|156|0xffffff", 90, 0, 200, 1079, 1000)
    while tx~=-1 do 
            tap(tx,ty);
            sysLog("++++collectGreen1 tx = ".. tx .." ty = "..ty);
            mSleep(500)
            counter()
            tx,ty = findMultiColorInRegionFuzzy( 0xcaff2c, "-58|14|0xf4ffdf,24|91|0xd2f37d,35|6|0xcbff30,-48|83|0xb3eb27,54|150|0xffffff,52|156|0xffffff", 90, 0, 200, 1079, 1000)
             sysLog("++++collect 1")
    end 
    
    tx,ty = findMultiColorInRegionFuzzy(0x11a120, "-17|44|0x11a120,-1|54|0x11a120,32|55|0x11a120,31|39|0x11a120,32|-1|0x11a120", 90, 0, 200, 1079, 1000)
    while tx~=-1 do 
            tap(tx,ty);
            sysLog("++++collectGreen2 tx = ".. tx .." ty = "..ty);
            mSleep(500)
            counter()
            tx,ty = findMultiColorInRegionFuzzy(0x11a120, "-17|44|0x11a120,-1|54|0x11a120,32|55|0x11a120,31|39|0x11a120,32|-1|0x11a120", 90, 0, 200, 1079, 1000)
             sysLog("++++collect 2")
    end 
    
    
    
    tx,ty = findMultiColorInRegionFuzzy(0xf4ffdf, "-27|14|0xf4ffdf,-48|50|0xf4ffdf,40|109|0xd2f37e,21|116|0xd1f37c,54|97|0xd4f481,65|172|0xffffff", 90, 0, 200, 1079, 1000)
    while tx~=-1 do 
            tap(tx,ty);
            sysLog("++++collectGreen3 tx = ".. tx .." ty = "..ty);
            mSleep(500)
            counter()
            tx,ty = findMultiColorInRegionFuzzy(0xf4ffdf, "-27|14|0xf4ffdf,-48|50|0xf4ffdf,40|109|0xd2f37e,21|116|0xd1f37c,54|97|0xd4f481,65|172|0xffffff", 90, 0, 200, 1079, 1000)
             sysLog("++++collect 3")
    end 
    

end

-- 收集能量  
function collectGreen(tx,ty)
    tap(500,ty+50)
    mSleep(1000)
    -- 判断当前网页有没有加载完毕
    tx,ty = findMultiColorInRegionFuzzy( 0xe5e5e5, "406|0|0xe5e5e5,945|0|0xe5e5e5,996|-74|0x30bf6c,848|-78|0x30bf6c,528|46|0x333333,486|49|0x333333", 90, 0, 200, 1079, 1000)
    while tx~=-1 do  
        mSleep(500)
        counter()
        tx,ty = findMultiColorInRegionFuzzy( 0xe5e5e5, "406|0|0xe5e5e5,945|0|0xe5e5e5,996|-74|0x30bf6c,848|-78|0x30bf6c,528|46|0x333333,486|49|0x333333", 90, 0, 200, 1079, 1000)
         sysLog("++++collectGreen 1")
    end
    
    
     mSleep(2000)
    -- 当前网页加载完毕 开始收集能量
    collect()
    
    -- 返回上层界面
        back()
        mSleep(1000)
      tx,ty = findMultiColorInRegionFuzzy( 0xe5e5e5, "406|0|0xe5e5e5,945|0|0xe5e5e5,996|-74|0x30bf6c,848|-78|0x30bf6c,528|46|0x333333,486|49|0x333333", 90, 0, 200, 1079, 1919)
    while tx~=-1 do  
        back()
        mSleep(1000)
        counter()       
        tx,ty = findMultiColorInRegionFuzzy( 0xe5e5e5, "406|0|0xe5e5e5,945|0|0xe5e5e5,996|-74|0x30bf6c,848|-78|0x30bf6c,528|46|0x333333,486|49|0x333333", 90, 0, 200, 1079, 1919)
        sysLog("++++collectGreen 2")
    end
   
end 

function newCollect(nx,ny) 
    -- 点击进入好友主页 
    sysLog("++++newCollect")
    tap(500,ny+50)
    mSleep(1000)

hx,hy =  findMultiColorInRegionFuzzy( 0x30bf6c, "354|-1|0x30bf6c,107|271|0xffffff,192|129|0x30bf6c,229|163|0x30bf6c,126|158|0x30bf6c", 90, 0, 0, 1079, 1919)
        while  hx ==-1 do
        mSleep(300)
  hx,hy =  findMultiColorInRegionFuzzy( 0x30bf6c, "354|-1|0x30bf6c,107|271|0xffffff,192|129|0x30bf6c,229|163|0x30bf6c,126|158|0x30bf6c", 90, 0, 0, 1079, 1919)
        sysLog("++++newCollect day 1")
        counter()
        end
    -- 加载完毕 
    -- 当前网页加载完毕 开始收集能量
    collect()
    -- 返回上层界面
    back()
    mSleep(1000)
         hx,hy =  findMultiColorInRegionFuzzy( 0x30bf6c, "354|-1|0x30bf6c,107|271|0xffffff,192|129|0x30bf6c,229|163|0x30bf6c,126|158|0x30bf6c", 90, 0, 0, 1079, 1919)
        while  hx ~=-1 do
        back()
        mSleep(1000)
        hx,hy =  findMultiColorInRegionFuzzy( 0x30bf6c, "354|-1|0x30bf6c,107|271|0xffffff,192|129|0x30bf6c,229|163|0x30bf6c,126|158|0x30bf6c", 90, 0, 0, 1079, 1919)
        sysLog("++++newCollect day 2")
        counter()
        end
        
 
end

-- 查找当前屏幕上可以手机能量的好友
function findFriends() 

    fx,fy = findMultiColorInRegionFuzzy( 0x30bf6c, "0|-2|0xe5e5e5,-39|34|0xffffff,0|65|0x30bf6c,-62|0|0x30bf6c", 90, 800, 200, 1079, 1919)
    while fx~=-1 do 
      --collectGreen(fx, fy)
      newCollect(fx, fy)
      fx,fy = findMultiColorInRegionFuzzy( 0x30bf6c, "0|-2|0xe5e5e5,-39|34|0xffffff,0|65|0x30bf6c,-62|0|0x30bf6c", 90, 800, 200, 1079, 1919)
    sysLog("++++findFriends")
    end

end


-- 全部好友中从下向上滑动 查找可以收集的好友 
function fromBottomToTop()
    findFriends()
    x,y = findMultiColorInRegionFuzzy( 0x108ee9, "105|73|0xc6c8c9,238|261|0xe5e5e5,278|292|0xe5e5e5", 90, 0, 0, 1079, 1919)
    while x==-1 do 
        moveTo(500,250,500,1915,100)
        mSleep(2000)
        findFriends()
        x,y = findMultiColorInRegionFuzzy( 0x108ee9, "105|73|0xc6c8c9,238|261|0xe5e5e5,278|292|0xe5e5e5", 90, 0, 0, 1079, 1919)
        sysLog("++++fromBottomToTop")
    end 
end


-- 从蚂蚁深林界面跳转到好友排行榜 
function moreFriends()
    moveTo(500,1800,500,200)
    x,y = findMultiColorInRegionFuzzy( 0x9c9c9c, "142|8|0x9c9c9c,375|3|0x9c9c9c,488|12|0x9c9c9c,656|1|0x9c9c9c,216|-124|0x333333,252|-111|0x333333,307|-106|0x333333,409|-111|0x333333", 90, 0, 1500, 1079, 1919)
    while x==-1 do 
        moveTo(500,1800,500,200,100)
        x,y = findMultiColorInRegionFuzzy(  0x9c9c9c, "142|8|0x9c9c9c,375|3|0x9c9c9c,488|12|0x9c9c9c,656|1|0x9c9c9c,216|-124|0x333333,252|-111|0x333333,307|-106|0x333333,409|-111|0x333333", 90, 0, 1500, 1079, 1919)
         sysLog("++++moreFriends")
    end 
    tap(230, 1587)
end

-- 从好友排行榜回到蚂蚁森林这个界面
function backHome()
    back()
    mSleep(500)
    -- 判断 阿拉善基金会图标 
    fx,fy = findMultiColorInRegionFuzzy(  0x9c9c9c, "142|8|0x9c9c9c,375|3|0x9c9c9c,488|12|0x9c9c9c,656|1|0x9c9c9c,216|-124|0x333333,252|-111|0x333333,307|-106|0x333333,409|-111|0x333333", 90, 0, 0, 1079, 1919)

    while fx==-1 do 
    back()
    mSleep(500)
    counter()
    fx,fy = findMultiColorInRegionFuzzy(  0x9c9c9c, "142|8|0x9c9c9c,375|3|0x9c9c9c,488|12|0x9c9c9c,656|1|0x9c9c9c,216|-124|0x333333,252|-111|0x333333,307|-106|0x333333,409|-111|0x333333", 90, 0, 0, 1079, 1919)
     sysLog("++++backHome1")
    end 
    
    -- 已经回到蚂蚁森林界面,回到顶部
    moveTo(500,250,500,1900)
    topx,topy = findMultiColorInRegionFuzzy( 0xe2f2fe, "8|87|0xe7f6fe,136|89|0xe7f6fe,166|6|0xe2f2fe,230|12|0x1da04e,294|73|0x1da04e,243|48|0xffffff", 90, 0, 0, 1079, 1919)
    while topx==-1  do 
    moveTo(500,250,500,1900)
    topx,topy = findMultiColorInRegionFuzzy( 0xe2f2fe, "8|87|0xe7f6fe,136|89|0xe7f6fe,166|6|0xe2f2fe,230|12|0x1da04e,294|73|0x1da04e,243|48|0xffffff", 90, 0, 0, 1079, 1919)
    sysLog("++++backHome2")
    end
    -- 已经回到顶部
end

-- 蚂蚁森林界面加载完毕
function loadHome()
    mSleep(500)
-- 首页上面三个白色的点点 findMultiColorInRegionFuzzy( 0xffffff, "2|3|0xffffff,1|25|0xffffff,-9|123|0x1da04e,-10|190|0x1da04e", 90, 878,81, 1070, 336)
    hx,hy = findMultiColorInRegionFuzzy( 0xffffff, "2|3|0xffffff,1|25|0xffffff,-9|123|0x1da04e,-10|190|0x1da04e", 90, 878,81, 1070, 336)
    while hx ==-1 do
      mSleep(500)
      hx,hy = findMultiColorInRegionFuzzy( 0xffffff, "2|3|0xffffff,1|25|0xffffff,-9|123|0x1da04e,-10|190|0x1da04e", 90, 878,81, 1070, 336)
      counter()
      sysLog("++++loadHome")
    end

end



closeApp(aliPayPkg)
-- 进入首页 取消弹框
isfront = 0
while isfront ~= 1 do                           --如果应用处于前台则继续
	runApp(aliPayPkg)
    mSleep(3000);                               --此处放置代码块
    isfront = isFrontApp(aliPayPkg);    --更新前台状态
end
-- 进入更多 
x,y =  findMultiColorInRegionFuzzy( 0xbbbbbb, "9|10|0xbbbbbb,-20|29|0xbbbbbb,31|28|0xbbbbbb,-12|81|0x000000,-17|94|0x000000,22|80|0x000000,25|94|0x000000", 90, 0, 0, 1079, 1919)
tap(x,y)
mSleep(1000)

bid,class = frontAppBid(); 

while  class~=aliApp do
    tap(  x, y)
    mSleep(1000)
    counter()
    bid,class = frontAppBid(); 
end


sysLog("++++进入蚂蚁森林")
-- 进入蚂蚁森林  蚂蚁森林的图标
x,y = findMultiColorInRegionFuzzy( 0x29ab91, "0|16|0x29ab91,1|55|0x29ab91,12|38|0x29ab91,27|37|0x29ab91,35|3|0x29ab91,57|34|0xffffff,19|34|0xffffff", 90, 0, 0, 1079, 1919)

tap(x+30,y+40)
mSleep(1000)

bid,class = frontAppBid(); 
while class~=aliH5 do
  x,y = findMultiColorInRegionFuzzy( 0x29ab91, "0|16|0x29ab91,1|55|0x29ab91,12|38|0x29ab91,27|37|0x29ab91,35|3|0x29ab91,57|34|0xffffff,19|34|0xffffff", 90, 0, 0, 1079, 1919)
tap( x+30,y+40)
mSleep(1000)
counter()
bid,class = frontAppBid(); 
sysLog("++++frontAppBid")

end
sysLog("++++成功进入蚂蚁森林")


while true do

    --蚂蚁森林加载完毕
    loadHome()
    -- 收集自己的能量
    collect()
    -- 点击查看更多好友
    moreFriends()
    -- 展开所有好友列表
    loadAll()
    -- 从最下面滑到最上面
    fromBottomToTop()
    -- 从好友排行榜回到蚂蚁森林
    backHome()
end
