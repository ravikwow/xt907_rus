.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$1;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSync;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Data;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhoneLookup;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Contacts;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$RawContacts;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlockedRawContacts;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$VisibilityOverridden_Contacts;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$SocialFriends;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Intents;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$GroupFixup;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$IdentityFixup;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$Sources;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$SourcesColumns;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$SyncColumns;,
        Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$BlurSyncColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final BLUR_ACCOUNT_TYPE_CONNECTED:Ljava/lang/String; = "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

.field public static final BLUR_ACCOUNT_TYPE_UNCONNECTED:Ljava/lang/String; = "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT"

.field public static final BLUR_CONTACTS_EXTENSION_AUTHORITY:Ljava/lang/String; = "com.motorola.blur.contacts.extensions"

.field public static final BLUR_DEFAULT_ACCT_ID:J = 0x0L

.field public static final BLUR_GAMS_ACCOUNT_TYPE:Ljava/lang/String; = "com.motorola.blur"

.field public static final BLUR_GAMS_ACCOUNT_TYPES:Ljava/lang/String; = "com.motorola.blur.%"

.field public static final BLUR_SYNC_ACCT_RESET_SUBMITTED:I = 0x2

.field public static final BLUR_SYNC_CLIENT_CHANGE_SUBMITTED:I = 0x1

.field public static final QUERY_LIMIT:Ljava/lang/String; = "limit"

.field protected static final TAG:Ljava/lang/String; = "BlurContactsExt"

.field private static mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "content://com.motorola.blur.contacts.extensions"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->AUTHORITY_URI:Landroid/net/Uri;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/BitmapFactory$Options;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .param p0, "x0"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 40
    sput-object p0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method public static getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 70
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 71
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 73
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static updateContactSettingsUngroupedVisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "ungroupedVisible"    # Z
    .param p4, "shouldSync"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 1841
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1843
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v5, "true"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1847
    .local v1, "uriSettings":Landroid/net/Uri;
    const-string v6, "account_name=? AND account_type=?"

    .line 1849
    .local v6, "SETTINGS_WHERE":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v9

    .line 1851
    .local v4, "settingsArgs":[Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1852
    .local v8, "cv":Landroid/content/ContentValues;
    const/4 v7, 0x0

    .line 1855
    .local v7, "curSettings":Landroid/database/Cursor;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "account_name=? AND account_type=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1856
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 1858
    const-string v2, "ungrouped_visible"

    if-eqz p3, :cond_1

    :goto_0
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1859
    const-string v2, "account_name=? AND account_type=?"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1870
    :goto_1
    if-eqz v7, :cond_0

    .line 1871
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1874
    :cond_0
    return-void

    :cond_1
    move v9, v10

    .line 1858
    goto :goto_0

    .line 1863
    :cond_2
    :try_start_1
    const-string v2, "account_name"

    invoke-virtual {v8, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v2, "account_type"

    invoke-virtual {v8, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    const-string v3, "ungrouped_visible"

    if-eqz p3, :cond_4

    move v2, v9

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1866
    const-string v3, "should_sync"

    if-eqz p4, :cond_5

    move v2, v9

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1867
    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1870
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 1871
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    move v2, v10

    .line 1865
    goto :goto_2

    :cond_5
    move v2, v10

    .line 1866
    goto :goto_3
.end method
