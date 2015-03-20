.class public Lcom/android/contacts/calllog/CityIdInfo;
.super Ljava/lang/Object;
.source "CityIdInfo.java"


# static fields
.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DBG:Z

.field private static final VDBG:Z


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
    .line 40
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->DBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CityIdInfo;->DBG:Z

    .line 41
    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->VDBG:Z

    sput-boolean v0, Lcom/android/contacts/calllog/CityIdInfo;->VDBG:Z

    .line 44
    const-string v0, "content://com.cequint.cityid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/calllog/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateName:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCountryName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->mIsNanpNum:Z

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 63
    const/16 v0, 0x230

    iput v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->minCityidViewWidth:I

    return-void
.end method

.method private doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strNumber"    # Ljava/lang/CharSequence;
    .param p3, "isIncoming"    # Z
    .param p4, "isNanpNetwork"    # Z

    .prologue
    .line 142
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->DBG:Z

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

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    .line 150
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 152
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    .line 154
    .local v4, "flags":[Ljava/lang/String;
    if-eqz p4, :cond_8

    .line 156
    const-string v1, "CityIdInfo"

    const-string v2, "Now is in NANP network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    const-string v2, "NANP"

    aput-object v2, v4, v1

    .line 161
    :goto_1
    if-eqz p3, :cond_9

    .line 163
    const/4 v1, 0x1

    const-string v2, "system"

    aput-object v2, v4, v1

    .line 164
    const/4 v1, 0x2

    const-string v2, "incoming"

    aput-object v2, v4, v1

    .line 170
    :goto_2
    const/4 v6, 0x0

    .line 172
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/contacts/calllog/CityIdInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 178
    :goto_3
    if-eqz v6, :cond_c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 180
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    .line 181
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateName:Ljava/lang/String;

    .line 182
    const/4 v1, 0x4

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    .line 183
    const/4 v1, 0x5

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCountryName:Ljava/lang/String;

    .line 184
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "City   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    .line 185
    :cond_3
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->VDBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    .line 186
    :cond_4
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->VDBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ST     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    .line 187
    :cond_5
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->VDBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Country: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCountryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    .line 188
    :cond_6
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CityIdInfo;->mIsNanpNum:Z

    .line 194
    :cond_7
    :goto_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 159
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v4, v1

    goto/16 :goto_1

    .line 166
    :cond_9
    const/4 v1, 0x1

    const-string v2, "user"

    aput-object v2, v4, v1

    .line 167
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput-object v2, v4, v1

    goto/16 :goto_2

    .line 173
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 174
    .local v7, "ex":Ljava/lang/NullPointerException;
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->DBG:Z

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

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    .line 175
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 188
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :cond_b
    const/4 v1, 0x0

    goto :goto_4

    .line 192
    :cond_c
    sget-boolean v1, Lcom/android/contacts/calllog/CityIdInfo;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "No CityID found"

    invoke-static {v1}, Lcom/android/contacts/calllog/CityIdInfo;->log(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public static isAvaialble(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 68
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v6, "com.cequint.cityid"

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 70
    .local v3, "info":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v6, v6

    if-nez v6, :cond_1

    .line 81
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v5

    .line 74
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 75
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget-object v0, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 76
    .local v0, "authority":Ljava/lang/String;
    const-string v6, "com.cequint.cityid"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    .line 77
    const/4 v5, 0x1

    goto :goto_0

    .line 74
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "authority":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isNanpNetwork(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const/4 v0, 0x1

    .line 217
    .local v0, "isNanpNetwork":Z
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 218
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isInNanpNetwork()Z

    move-result v0

    .line 219
    :cond_0
    return v0
.end method

.method static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 223
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

    .line 224
    return-void
.end method

.method public static recentCallCityIdLookup(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/contacts/calllog/CityIdInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    .line 207
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/calllog/CityIdInfo;->isNanpNetwork(Landroid/content/Context;)Z

    move-result v1

    .line 208
    .local v1, "isNanp":Z
    new-instance v0, Lcom/android/contacts/calllog/CityIdInfo;

    invoke-direct {v0}, Lcom/android/contacts/calllog/CityIdInfo;-><init>()V

    .line 209
    .local v0, "cidInfo":Lcom/android/contacts/calllog/CityIdInfo;
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/contacts/calllog/CityIdInfo;->doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 8
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "wAvailable"    # I

    .prologue
    .line 101
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 103
    iget-boolean v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mIsNanpNum:Z

    if-eqz v5, :cond_3

    .line 105
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 136
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    return-object v5

    .line 114
    :cond_0
    if-eqz p2, :cond_2

    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    const-string v6, ", "

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 115
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v0, v5

    .line 116
    .local v0, "curCityNameWidth":I
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    const-string v6, "..., "

    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    add-float/2addr v5, v6

    float-to-int v3, v5

    .line 117
    .local v3, "otherStrWidth":I
    sub-int v2, p2, v3

    .line 118
    .local v2, "maxCityNameWidth":I
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 119
    .local v1, "len":I
    new-array v4, v1, [F

    .line 120
    .local v4, "widths":[F
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 121
    :goto_1
    if-le v0, v2, :cond_1

    if-lez v1, :cond_1

    .line 122
    add-int/lit8 v5, v1, -0x1

    aget v5, v4, v5

    float-to-int v5, v5

    sub-int/2addr v0, v5

    .line 123
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 125
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..., "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 127
    .end local v0    # "curCityNameWidth":I
    .end local v1    # "len":I
    .end local v2    # "maxCityNameWidth":I
    .end local v3    # "otherStrWidth":I
    .end local v4    # "widths":[F
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCityName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/calllog/CityIdInfo;->mStateAbrv:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 134
    :cond_3
    iget-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mCountryName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/contacts/calllog/CityIdInfo;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public computeDisplayName(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 88
    .local v0, "curCityidViewWidth":I
    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/contacts/calllog/CityIdInfo;->minCityidViewWidth:I

    if-ge v0, v1, :cond_0

    .line 89
    iput v0, p0, Lcom/android/contacts/calllog/CityIdInfo;->minCityidViewWidth:I

    .line 91
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/calllog/CityIdInfo;->minCityidViewWidth:I

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/calllog/CityIdInfo;->computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
