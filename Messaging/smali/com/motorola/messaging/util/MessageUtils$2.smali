.class final Lcom/motorola/messaging/util/MessageUtils$2;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/util/MessageUtils;->addLocationFavorite(Landroid/app/Activity;Lcom/motorola/messaging/model/VcardModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$model:Lcom/motorola/messaging/model/VcardModel;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/motorola/messaging/model/VcardModel;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    iput-object p2, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$model:Lcom/motorola/messaging/model/VcardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 640
    const/4 v4, 0x0

    .line 641
    .local v4, "result":Landroid/net/Uri;
    iget-object v7, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    iget-object v8, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$model:Lcom/motorola/messaging/model/VcardModel;

    invoke-virtual {v8}, Lcom/motorola/messaging/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/motorola/messaging/model/VcardUtil;->parseVCard(Landroid/content/Context;Landroid/net/Uri;)Lcom/motorola/messaging/vcard/VCardEntry;

    move-result-object v0

    .line 642
    .local v0, "entry":Lcom/motorola/messaging/vcard/VCardEntry;
    if-eqz v0, :cond_3

    .line 643
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 644
    .local v5, "values":Landroid/content/ContentValues;
    sget-object v7, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getGeoData()Lcom/motorola/messaging/vcard/VCardEntry$GeoData;

    move-result-object v2

    .line 646
    .local v2, "geoData":Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
    if-eqz v2, :cond_0

    .line 647
    sget-object v7, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->LAT:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getGeoData()Lcom/motorola/messaging/vcard/VCardEntry$GeoData;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->latitude:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 648
    sget-object v7, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->LON:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getGeoData()Lcom/motorola/messaging/vcard/VCardEntry$GeoData;

    move-result-object v8

    iget-object v8, v8, Lcom/motorola/messaging/vcard/VCardEntry$GeoData;->longitude:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 650
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getPhoneList()Ljava/util/List;

    move-result-object v3

    .line 651
    .local v3, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/vcard/VCardEntry$PhoneData;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 652
    sget-object v8, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->PHONE_NUMBER:Ljava/lang/String;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/messaging/vcard/VCardEntry$PhoneData;

    invoke-virtual {v7}, Lcom/motorola/messaging/vcard/VCardEntry$PhoneData;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_1
    invoke-virtual {v0}, Lcom/motorola/messaging/vcard/VCardEntry;->getWebsiteList()Ljava/util/List;

    move-result-object v6

    .line 655
    .local v6, "websiteList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/vcard/VCardEntry$WebsiteData;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 656
    sget-object v8, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->URL:Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/motorola/messaging/vcard/VCardEntry$WebsiteData;

    invoke-virtual {v7}, Lcom/motorola/messaging/vcard/VCardEntry$WebsiteData;->getWebsite()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/motorola/messaging/frameworkadapter/motorola/Ils;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 664
    :goto_0
    if-eqz v4, :cond_4

    .line 665
    iget-object v7, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    new-instance v8, Lcom/motorola/messaging/util/MessageUtils$2$1;

    invoke-direct {v8, p0}, Lcom/motorola/messaging/util/MessageUtils$2$1;-><init>(Lcom/motorola/messaging/util/MessageUtils$2;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 689
    .end local v2    # "geoData":Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
    .end local v3    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/vcard/VCardEntry$PhoneData;>;"
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v6    # "websiteList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/vcard/VCardEntry$WebsiteData;>;"
    :cond_3
    :goto_1
    return-void

    .line 661
    .restart local v2    # "geoData":Lcom/motorola/messaging/vcard/VCardEntry$GeoData;
    .restart local v3    # "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/vcard/VCardEntry$PhoneData;>;"
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v6    # "websiteList":Ljava/util/List;, "Ljava/util/List<Lcom/motorola/messaging/vcard/VCardEntry$WebsiteData;>;"
    :catch_0
    move-exception v1

    .line 662
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0

    .line 673
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_4
    iget-object v7, p0, Lcom/motorola/messaging/util/MessageUtils$2;->val$context:Landroid/app/Activity;

    new-instance v8, Lcom/motorola/messaging/util/MessageUtils$2$2;

    invoke-direct {v8, p0}, Lcom/motorola/messaging/util/MessageUtils$2$2;-><init>(Lcom/motorola/messaging/util/MessageUtils$2;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
