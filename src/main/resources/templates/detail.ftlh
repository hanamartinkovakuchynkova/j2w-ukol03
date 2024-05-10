[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Vizitkovník</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="detail">
    <form class="vizitka">
        <div class="jmeno">${businessCard.name}</div>
        <div class="firma">${businessCard.company}</div>
        <div class="udaje">
            <div class="adresa">
                <div>Václavské náměstí 837/11</div>
                <div><span>11000</span> Praha 1</div>
            </div>
            <div class="kontakty">
                <div><i class="las la-at"></i> <span>${businessCard.email}</span></div>
                <div><i class="las la-phone-alt"></i> <span>${businessCard.telephone}</span></div>
                <div><i class="las la-globe"></i> <span>${businessCard.webAddress}</span></div>
            </div>
        </div>
    </form>
    <div class="mapa">
        <iframe style="border:none" src="https://frame.mapy.cz/?q=${"Václavské náměstí 837/11, Praha"?url("UTF-8")}" width="100%" height="100%" frameborder="0"></iframe>
    </div>

</div>
</body>
</html>
