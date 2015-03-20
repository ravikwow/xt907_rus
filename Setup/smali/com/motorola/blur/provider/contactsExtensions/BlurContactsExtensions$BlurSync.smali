.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlurSync"
.end annotation


# static fields
.field public static final BLUR_ANCHOR:Ljava/lang/String; = "anchor"

.field public static final BLUR_EXTENSION:Ljava/lang/String; = "extension"

.field public static final BLUR_SERVICE_NAME:Ljava/lang/String; = "blur_service_name"

.field private static final BLUR_SERVICE_PROPERTY_UPDATE_URI:Landroid/net/Uri;

.field public static final DIRTY_BLURSERVICES_QUERY_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1754
    const-string v0, "content://com.motorola.blur.contacts.extensions/dirty_blurservices_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;->DIRTY_BLURSERVICES_QUERY_URI:Landroid/net/Uri;

    .line 1757
    const-string v0, "content://com.motorola.blur.contacts.extensions/update_blurservice_property"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;->BLUR_SERVICE_PROPERTY_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getServiceAnchor(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1788
    const-string v0, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-static {p0, v0, p1, p2}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;->getServiceAnchor(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceAnchor(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 1795
    const/4 v7, 0x0

    .line 1797
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "data"

    aput-object v4, v3, v1

    const-string v4, "account_name=? AND account_type=?"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v5, v1

    const/4 v1, 0x1

    aput-object p1, v5, v1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1803
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1804
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1805
    .local v9, "data":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1806
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v14, "propertyArray":Lorg/json/JSONArray;
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v12

    .line 1808
    .local v12, "length":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v12, :cond_2

    .line 1809
    invoke-virtual {v14, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 1810
    .local v13, "object":Lorg/json/JSONObject;
    const-string v1, "blur_service_name"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1811
    .local v8, "currentService":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1812
    const-string v1, "anchor"

    invoke-virtual {v13, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1820
    if-eqz v7, :cond_0

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1822
    const/4 v7, 0x0

    .line 1825
    .end local v8    # "currentService":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "length":I
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v14    # "propertyArray":Lorg/json/JSONArray;
    :cond_0
    :goto_1
    return-object v1

    .line 1808
    .restart local v8    # "currentService":Ljava/lang/String;
    .restart local v9    # "data":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v12    # "length":I
    .restart local v13    # "object":Lorg/json/JSONObject;
    .restart local v14    # "propertyArray":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1820
    .end local v8    # "currentService":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v12    # "length":I
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v14    # "propertyArray":Lorg/json/JSONArray;
    :cond_2
    if-eqz v7, :cond_3

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1822
    const/4 v7, 0x0

    .line 1825
    :cond_3
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1817
    :catch_0
    move-exception v10

    .line 1818
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "BlurContactsExt"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v10, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1820
    if-eqz v7, :cond_3

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1822
    const/4 v7, 0x0

    goto :goto_2

    .line 1820
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 1821
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1822
    const/4 v7, 0x0

    :cond_4
    throw v1
.end method

.method public static getServiceSyncUpdateUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "accountName"    # Ljava/lang/String;
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1763
    const-string v0, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-static {v0, p0, p1}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;->getServiceSyncUpdateUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceSyncUpdateUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 1771
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1774
    const/4 v0, 0x0

    .line 1777
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;->BLUR_SERVICE_PROPERTY_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_type"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "account_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "blur_service_name"

    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
