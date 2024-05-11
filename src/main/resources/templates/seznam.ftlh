[#ftl]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Business Card View</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
[#list businessCardList as businessCard]
<div class="seznam">
    <a href="/detail/${businessCard_index}">
        <div class="vizitka">
            <div class="jmeno">${businessCard.name}</div>
            <div class="firma">${businessCard.company}</div>
            <div class="udaje">
                <div class="adresa">
                    <div>${businessCard.street}</div>
                    <div>${businessCard.cityZipCode}</div>
                </div>
                <div class="kontakty">
                    [#if businessCard.email??]
                        <div><i class="las la-at"></i> <span>${businessCard.email}</span></div>
                    [/#if]
                    [#if businessCard.telephone??]
                        <div><i class="las la-phone-alt"></i> <span>${businessCard.telephone}</span></div>
                    [/#if]
                    [#if businessCard.webAddress??]
                        <div><i class="las la-globe"></i> <span>${businessCard.webAddress}</span></div>
                    [/#if]
                </div>
            </div>
        </div>
    </a>
</div>
[/#list]
</body>
</html>
