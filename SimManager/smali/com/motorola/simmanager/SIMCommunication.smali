.class Lcom/motorola/simmanager/SIMCommunication;
.super Ljava/lang/Object;
.source "SIMCommunication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    }
.end annotation


# static fields
.field public static final COL_EMAIL_EXT:[Ljava/lang/String;

.field public static final COL_NUMBER_EXT:[Ljava/lang/String;

.field private static EMAIL_COUNT:I

.field private static PHONE_NUMBER_COUNT:I

.field public static final SIM_PROJECTION:[Ljava/lang/String;

.field static final URI_ADN:Landroid/net/Uri;

.field public static final USIM_PROJECTION:[Ljava/lang/String;

.field private static bInited:Z

.field private static mProjection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v2

    const-string v1, "number2"

    aput-object v1, v0, v3

    const-string v1, "number3"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->COL_NUMBER_EXT:[Ljava/lang/String;

    .line 36
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v2

    const-string v1, "emails2"

    aput-object v1, v0, v3

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->COL_EMAIL_EXT:[Ljava/lang/String;

    .line 38
    sput v3, Lcom/motorola/simmanager/SIMCommunication;->PHONE_NUMBER_COUNT:I

    .line 39
    sput v2, Lcom/motorola/simmanager/SIMCommunication;->EMAIL_COUNT:I

    .line 44
    sput-boolean v2, Lcom/motorola/simmanager/SIMCommunication;->bInited:Z

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->SIM_PROJECTION:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v2

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "number2"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->USIM_PROJECTION:[Ljava/lang/String;

    .line 56
    sget-object v0, Lcom/motorola/simmanager/SIMCommunication;->SIM_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->mProjection:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method public static checkSIMName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xe

    .line 187
    move-object v0, p0

    .line 188
    .local v0, "tmpName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 195
    .end local v0    # "tmpName":Ljava/lang/String;
    .local v1, "tmpName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 191
    .end local v1    # "tmpName":Ljava/lang/String;
    .restart local v0    # "tmpName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    .line 192
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 195
    .end local v0    # "tmpName":Ljava/lang/String;
    .restart local v1    # "tmpName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static createContactInSim(Landroid/content/ContentResolver;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;)Z
    .locals 7
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "info"    # Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    .prologue
    const/4 v5, 0x0

    .line 258
    iget-object v4, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/motorola/simmanager/SIMCommunication;->trimLeadingEmptyString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 259
    .local v2, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/motorola/simmanager/SIMCommunication;->trimLeadingEmptyString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 261
    .local v0, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 286
    :goto_0
    return v4

    .line 265
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v3, "v":Landroid/content/ContentValues;
    const-string v4, "tag"

    iget-object v6, p1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget v4, Lcom/motorola/simmanager/SIMCommunication;->PHONE_NUMBER_COUNT:I

    if-ge v1, v4, :cond_2

    .line 268
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    sget-object v4, Lcom/motorola/simmanager/SIMCommunication;->COL_NUMBER_EXT:[Ljava/lang/String;

    aget-object v6, v4, v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->extractDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 271
    :cond_1
    sget-object v4, Lcom/motorola/simmanager/SIMCommunication;->COL_NUMBER_EXT:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 275
    :cond_2
    const/4 v1, 0x0

    :goto_3
    sget v4, Lcom/motorola/simmanager/SIMCommunication;->EMAIL_COUNT:I

    if-ge v1, v4, :cond_4

    .line 276
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 277
    sget-object v4, Lcom/motorola/simmanager/SIMCommunication;->COL_EMAIL_EXT:[Ljava/lang/String;

    aget-object v6, v4, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 279
    :cond_3
    sget-object v4, Lcom/motorola/simmanager/SIMCommunication;->COL_EMAIL_EXT:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 283
    :cond_4
    sget-object v4, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_5

    move v4, v5

    .line 284
    goto :goto_0

    .line 286
    :cond_5
    const/4 v4, 0x1

    goto :goto_0
.end method

.method static deleteContactFromSIM(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, "nameToDelete":Ljava/lang/String;
    const/4 v2, 0x0

    .line 140
    .local v2, "numberToDelete":Ljava/lang/String;
    const/4 v0, 0x0

    .line 141
    .local v0, "emailToDelete":Ljava/lang/String;
    const/4 v3, 0x1

    .line 142
    .local v3, "result":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 143
    :cond_0
    const-string v1, "\'\'"

    .line 147
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 148
    :cond_1
    const-string v2, "\'\'"

    .line 152
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 153
    :cond_2
    const-string v0, "\'\'"

    .line 157
    :goto_2
    sget-boolean v6, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v6, :cond_8

    .line 158
    sget-object v6, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "emails"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_7

    move v3, v4

    .line 170
    :goto_3
    if-nez v3, :cond_3

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name delete failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number to Delete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Email to Delete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 175
    :cond_3
    return v3

    .line 145
    :cond_4
    move-object v1, p1

    goto/16 :goto_0

    .line 150
    :cond_5
    move-object v2, p2

    goto/16 :goto_1

    .line 155
    :cond_6
    move-object v0, p3

    goto/16 :goto_2

    :cond_7
    move v3, v5

    .line 158
    goto :goto_3

    .line 164
    :cond_8
    sget-object v6, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "AND"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_9

    move v3, v4

    :goto_4
    goto/16 :goto_3

    :cond_9
    move v3, v5

    goto :goto_4
.end method

.method static getAllContactsFromSIM(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    .locals 7
    .param p0, "c"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 73
    sget-object v1, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/simmanager/SIMCommunication;->mProjection:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v6, 0x0

    .line 78
    :cond_0
    return-object v6
.end method

.method public static getEmailCount()I
    .locals 1

    .prologue
    .line 238
    sget v0, Lcom/motorola/simmanager/SIMCommunication;->EMAIL_COUNT:I

    return v0
.end method

.method public static getPhoneNumberCount()I
    .locals 1

    .prologue
    .line 234
    sget v0, Lcom/motorola/simmanager/SIMCommunication;->PHONE_NUMBER_COUNT:I

    return v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    sget-boolean v0, Lcom/motorola/simmanager/SIMCommunication;->bInited:Z

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "SIMCommunication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already initialized! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/simmanager/SIMCommunication;->PHONE_NUMBER_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/simmanager/SIMCommunication;->EMAIL_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-boolean v0, Lcom/motorola/simmanager/SMUtils;->FTR_35420_USIM_IMPORT_EXPORT:Z

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Lcom/motorola/simmanager/SIMCommunication;->USIM_PROJECTION:[Ljava/lang/String;

    sput-object v0, Lcom/motorola/simmanager/SIMCommunication;->mProjection:[Ljava/lang/String;

    .line 220
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/motorola/simmanager/SIMCommunication;->bInited:Z

    .line 221
    const-string v0, "gsm.mot.usim.support.anr"

    invoke-static {v0}, Lcom/motorola/simmanager/SMSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getIntegerOverlaidResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/motorola/simmanager/SIMCommunication;->PHONE_NUMBER_COUNT:I

    .line 225
    :cond_2
    const-string v0, "gsm.mot.usim.support.email"

    invoke-static {v0}, Lcom/motorola/simmanager/SMSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060001

    invoke-static {v1}, Lcom/motorola/simmanager/SimManagerApp;->getIntegerOverlaidResourceId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/motorola/simmanager/SIMCommunication;->EMAIL_COUNT:I

    .line 229
    :cond_3
    const-string v0, "SIMCommunication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init SIM Card settings: Supported Phone Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/simmanager/SIMCommunication;->PHONE_NUMBER_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Supported Email Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/motorola/simmanager/SIMCommunication;->EMAIL_COUNT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static isSIMPresent(Landroid/content/Context;)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 183
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eq v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static saveContactToSIM(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 95
    if-eqz p2, :cond_0

    const-string v4, "NO_PHONE_NUMBER"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    invoke-static {p2}, Lcom/motorola/simmanager/SMUtils;->extractDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "numberToStore":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    const-string v4, "don\'t store, number is empty"

    invoke-static {v4}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/motorola/simmanager/SIMCommunication;->checkSIMName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "nameToStore":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .local v2, "v":Landroid/content/ContentValues;
    const-string v4, "tag"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v4, "number"

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v4, Lcom/motorola/simmanager/SIMCommunication;->URI_ADN:Landroid/net/Uri;

    invoke-virtual {p0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 113
    const-string v3, "insert(URI_SIM) failed!!!"

    invoke-static {v3}, Lcom/motorola/simmanager/SMUtils;->logw(Ljava/lang/String;)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name Store failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Number Store failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 117
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static trimLeadingEmptyString(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "v":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 242
    if-nez p0, :cond_1

    .line 243
    const/4 v0, 0x0

    .line 251
    :cond_0
    return-object v0

    .line 246
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 247
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static truncateSIMName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "maxNameLength"    # I

    .prologue
    .line 199
    move-object v0, p0

    .line 200
    .local v0, "tmpName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v1, v0

    .line 207
    .end local v0    # "tmpName":Ljava/lang/String;
    .local v1, "tmpName":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 203
    .end local v1    # "tmpName":Ljava/lang/String;
    .restart local v0    # "tmpName":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p1, :cond_2

    .line 204
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 207
    .end local v0    # "tmpName":Ljava/lang/String;
    .restart local v1    # "tmpName":Ljava/lang/String;
    goto :goto_0
.end method
