.class public Lcom/motorola/contacts/util/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final DBG:Z

.field static s_mMapCidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/contacts/util/CityIdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCityName:Ljava/lang/String;

.field public mCountryName:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field public mIsNanpNum:Z

.field public mStateAbrv:Ljava/lang/String;

.field public mStateName:Ljava/lang/String;

.field private minCityidViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    .line 44
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/util/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/contacts/util/CityIdInfo;->s_mMapCidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateName:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCountryName:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->mIsNanpNum:Z

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 75
    const/16 v0, 0x230

    iput v0, p0, Lcom/motorola/contacts/util/CityIdInfo;->minCityidViewWidth:I

    return-void
.end method

.method public static clearCityIdInfoCache()V
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/motorola/contacts/util/CityIdInfo;->s_mMapCidContacts:Ljava/util/HashMap;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lcom/motorola/contacts/util/CityIdInfo;->s_mMapCidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/motorola/contacts/util/CityIdInfo;->getCachedCityIdInfo(Ljava/lang/String;)Lcom/motorola/contacts/util/CityIdInfo;

    move-result-object v1

    .line 101
    .local v1, "tempCid":Lcom/motorola/contacts/util/CityIdInfo;
    if-eqz v1, :cond_1

    .line 102
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 103
    .local v0, "curCityidViewWidth":I
    if-lez v0, :cond_0

    iget v2, v1, Lcom/motorola/contacts/util/CityIdInfo;->minCityidViewWidth:I

    if-ge v0, v2, :cond_0

    .line 104
    iput v0, v1, Lcom/motorola/contacts/util/CityIdInfo;->minCityidViewWidth:I

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/contacts/util/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .end local v0    # "curCityidViewWidth":I
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strNumber"    # Ljava/lang/CharSequence;
    .param p3, "isIncoming"    # Z
    .param p4, "isNanpNetwork"    # Z

    .prologue
    .line 160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Lookup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 170
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    .line 172
    .local v4, "flags":[Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 175
    const/4 v1, 0x0

    const-string v2, "NANP"

    aput-object v2, v4, v1

    .line 179
    :goto_1
    if-eqz p3, :cond_9

    .line 181
    const/4 v1, 0x1

    const-string v2, "system"

    aput-object v2, v4, v1

    .line 182
    const/4 v1, 0x2

    const-string v2, "incoming"

    aput-object v2, v4, v1

    .line 188
    :goto_2
    const/4 v6, 0x0

    .line 190
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/contacts/util/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 196
    :goto_3
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 198
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    .line 199
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateName:Ljava/lang/String;

    .line 200
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    .line 201
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCountryName:Ljava/lang/String;

    .line 202
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "City   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    .line 203
    :cond_3
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    .line 204
    :cond_4
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    .line 205
    :cond_5
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    .line 206
    :cond_6
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/motorola/contacts/util/CityIdInfo;->mIsNanpNum:Z

    .line 212
    :cond_7
    :goto_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 177
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v4, v1

    goto/16 :goto_1

    .line 184
    :cond_9
    const/4 v1, 0x1

    const-string v2, "user"

    aput-object v2, v4, v1

    .line 185
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v4, v1

    goto/16 :goto_2

    .line 191
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 192
    .local v7, "ex":Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "catch exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    .line 193
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 206
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 210
    :cond_c
    sget-boolean v1, Lcom/motorola/contacts/util/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "No CityID found"

    invoke-static {v1}, Lcom/motorola/contacts/util/CityIdInfo;->log(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static getCachedCityIdInfo(Ljava/lang/String;)Lcom/motorola/contacts/util/CityIdInfo;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-object v0, Lcom/motorola/contacts/util/CityIdInfo;->s_mMapCidContacts:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/contacts/util/CityIdInfo;

    return-object v0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 80
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.cequint.cityid"

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 82
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v6, v6

    if-nez v6, :cond_1

    .line 94
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v5

    .line 86
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 87
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v0, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 88
    .local v0, "authority":Ljava/lang/String;
    const-string v6, "com.cequint.cityid"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 89
    const/4 v5, 0x1

    goto :goto_0

    .line 86
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isNanpNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const/4 v0, 0x1

    .line 239
    .local v0, "isNanpNetwork":Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 240
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isInNanpNetwork()Z

    move-result v0

    .line 241
    :cond_0
    return v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 245
    const-string v0, "CityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public static recentCallCityIdLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/motorola/contacts/util/CityIdInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p0, :cond_2

    .line 223
    :cond_0
    const/4 v1, 0x0

    .line 233
    :cond_1
    :goto_0
    return-object v1

    .line 225
    :cond_2
    invoke-static {p1}, Lcom/motorola/contacts/util/CityIdInfo;->getCachedCityIdInfo(Ljava/lang/String;)Lcom/motorola/contacts/util/CityIdInfo;

    move-result-object v1

    .line 226
    .local v1, "tempCid":Lcom/motorola/contacts/util/CityIdInfo;
    if-nez v1, :cond_1

    .line 227
    invoke-static {p0}, Lcom/motorola/contacts/util/CityIdInfo;->isNanpNetwork(Landroid/content/Context;)Z

    move-result v0

    .line 228
    .local v0, "isNanp":Z
    new-instance v1, Lcom/motorola/contacts/util/CityIdInfo;

    .end local v1    # "tempCid":Lcom/motorola/contacts/util/CityIdInfo;
    invoke-direct {v1}, Lcom/motorola/contacts/util/CityIdInfo;-><init>()V

    .line 229
    .restart local v1    # "tempCid":Lcom/motorola/contacts/util/CityIdInfo;
    invoke-direct {v1, p0, p1, p2, v0}, Lcom/motorola/contacts/util/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 230
    sget-object v2, Lcom/motorola/contacts/util/CityIdInfo;->s_mMapCidContacts:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 9
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 118
    iget v4, p0, Lcom/motorola/contacts/util/CityIdInfo;->minCityidViewWidth:I

    .line 119
    .local v4, "wAvailable":I
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 121
    iget-boolean v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mIsNanpNum:Z

    if-eqz v6, :cond_3

    .line 123
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 125
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateName:Ljava/lang/String;

    iput-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 154
    :goto_0
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    return-object v6

    .line 132
    :cond_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    iget-object v7, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    const-string v7, ", "

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    int-to-float v7, v4

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 133
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v0, v6

    .line 134
    .local v0, "curCityNameWidth":I
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    const-string v7, "..., "

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 135
    .local v3, "otherStrWidth":I
    sub-int v2, v4, v3

    .line 136
    .local v2, "maxCityNameWidth":I
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 137
    .local v1, "len":I
    new-array v5, v1, [F

    .line 138
    .local v5, "widths":[F
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 139
    :goto_1
    if-le v0, v2, :cond_1

    if-lez v1, :cond_1

    .line 140
    add-int/lit8 v6, v1, -0x1

    aget v6, v5, v6

    float-to-int v6, v6

    sub-int/2addr v0, v6

    .line 141
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 143
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..., "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 145
    .end local v0    # "curCityNameWidth":I
    .end local v1    # "len":I
    .end local v2    # "maxCityNameWidth":I
    .end local v3    # "otherStrWidth":I
    .end local v5    # "widths":[F
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/contacts/util/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 152
    :cond_3
    iget-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mCountryName:Ljava/lang/String;

    iput-object v6, p0, Lcom/motorola/contacts/util/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method
