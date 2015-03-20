.class public final Lcom/motorola/blur/provider/DeviceSetup$Accounts;
.super Ljava/lang/Object;
.source "DeviceSetup.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Accounts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/DeviceSetup$Accounts$State;,
        Lcom/motorola/blur/provider/DeviceSetup$Accounts$AttAutoDownloadValues;
    }
.end annotation


# static fields
.field public static final ACCOUNT_PRETTY_NAME:Ljava/lang/String; = "account_pretty_name"

.field public static final ACTIVESYNC_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.account.activesync"

.field public static final ALIASES:Ljava/lang/String; = "aliases"

.field public static final ATTACH_AUTO_DL_WIFI:Ljava/lang/String; = "attach_autodl_wifi"

.field public static final ATTACH_AUTO_DL_WIFI_DEFAULT_VALUE:I = 0x1

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.account"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.service.account"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_UNIQUE_EMAILS:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "modified DESC"

.field public static final EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "email_address"

.field public static final EMAIL_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.account.email"

.field public static final FIXEDEMAIL_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.account.fixedemail"

.field public static final HUXEMAIL_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.account.huxemail"

.field public static final MOTHER_USER_CREDS_TYPE:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

.field public static final NAMED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

.field public static final PROVIDERS_ID:Ljava/lang/String; = "provider_id"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STATE_DEFAULT_VALUE:I = 0x1

.field public static final SYNC_CONNECT:Ljava/lang/String; = "sync_connection"

.field public static final SYNC_CONNECT_DEFAULT_VALUE:I = 0xff

.field public static final TABLE_COLUMNS_INFO:Ljava/lang/String; = "provider_id integer, email_address text,user_pretty_name text, account_pretty_name text,sync_connection integer default 255,attach_autodl_wifi integer default 1,state integer default 1,aliases text);"

.field public static final TABLE_NAME:Ljava/lang/String; = "accounts"

.field public static final TEMP_FILE_URI:Landroid/net/Uri;

.field public static final USER_PRETTY_NAME:Ljava/lang/String; = "user_pretty_name"

.field public static final YAHOO_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.service.account.yahoo"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 434
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    .line 436
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "unique"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI_UNIQUE_EMAILS:Landroid/net/Uri;

    .line 450
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "emailaccounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->EMAIL_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    .line 460
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "names"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->NAMED_ACCOUNTS_CONTENT_URI:Landroid/net/Uri;

    .line 466
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "tempfiles"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->TEMP_FILE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    return-void
.end method

.method public static final hasBlurAccount(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 598
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 599
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBlurAccountProvisioned(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 603
    const-string v0, "content://com.motorola.blur.service.blur.bsmotherprovider/DeviceId"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 604
    .local v1, "URI_BLUR_DEVICE_ID":Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v10

    .line 605
    .local v2, "PROJ":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 606
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 608
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 609
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 615
    :cond_0
    if-eqz v6, :cond_1

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v9

    :goto_1
    return v0

    .line 612
    :catch_0
    move-exception v7

    .line 613
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "DeviceSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    if-eqz v6, :cond_1

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 615
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 616
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 620
    goto :goto_1
.end method

.method public static isBlurSingleParentMode(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 625
    const-string v0, "content://com.motorola.blur.service.blur.bsmotherprovider/SingleParentMode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "URI_SINGLE_PARENT_MODE":Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v10

    .line 627
    .local v2, "PROJ":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 628
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 630
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 631
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 637
    :cond_0
    if-eqz v6, :cond_1

    .line 638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_3

    move v0, v9

    :goto_1
    return v0

    .line 634
    :catch_0
    move-exception v7

    .line 635
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "DeviceSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    if-eqz v6, :cond_1

    .line 638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 637
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 638
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 641
    goto :goto_1
.end method

.method public static isGlobalDeviceProvisioningEnabled(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 645
    const-string v0, "content://com.motorola.blur.service.blur.bsmotherprovider/GlobalMode"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 646
    .local v1, "URI_GLOBAL_MODE":Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v10

    .line 647
    .local v2, "PROJ":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 648
    .local v8, "value":Ljava/lang/String;
    const/4 v6, 0x0

    .line 650
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 651
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 657
    :cond_0
    if-eqz v6, :cond_1

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_3

    move v0, v9

    :goto_1
    return v0

    .line 654
    :catch_0
    move-exception v7

    .line 655
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "DeviceSetup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    if-eqz v6, :cond_1

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 657
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 658
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move v0, v10

    .line 661
    goto :goto_1
.end method
