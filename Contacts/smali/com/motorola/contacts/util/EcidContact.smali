.class public Lcom/motorola/contacts/util/EcidContact;
.super Ljava/lang/Object;
.source "EcidContact.java"


# static fields
.field static COLUMN_CITY:I

.field static COLUMN_COMPANY:I

.field static COLUMN_COUNT:I

.field static COLUMN_COUNTRY:I

.field static COLUMN_DISPLAY_NAME:I

.field static COLUMN_FIRST_NAME:I

.field static COLUMN_ID:I

.field static COLUMN_LAST_NAME:I

.field static COLUMN_NAME:I

.field static COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

.field static COLUMN_NUMBER:I

.field static COLUMN_STATE:I

.field static COLUMN_STATE_ABBR:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final DBG:Z

.field private static mKeepContext:Landroid/content/Context;

.field private static m_alreadyCheckedPackage:Z

.field private static m_isEcidEnabled:Z

.field static m_mapEcidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/contacts/util/EcidContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public m_bNoOutgoingCallRestriction:Z

.field public m_bizName:Ljava/lang/String;

.field public m_callerId:Ljava/lang/String;

.field public m_cityName:Ljava/lang/String;

.field public m_cname:Ljava/lang/String;

.field public m_countryName:Ljava/lang/String;

.field public m_displayName:Ljava/lang/String;

.field public m_firstName:Ljava/lang/String;

.field public m_isNanp:Z

.field public m_lastName:Ljava/lang/String;

.field public m_number:Ljava/lang/String;

.field public m_stateAbbr:Ljava/lang/String;

.field public m_stateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    sget-boolean v0, Lcom/android/contacts/ContactsUtils;->DBG:Z

    sput-boolean v0, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    .line 42
    const-string v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/util/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/util/EcidContact;->mKeepContext:Landroid/content/Context;

    .line 89
    sput-boolean v1, Lcom/motorola/contacts/util/EcidContact;->m_alreadyCheckedPackage:Z

    .line 90
    sput-boolean v1, Lcom/motorola/contacts/util/EcidContact;->m_isEcidEnabled:Z

    .line 92
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/contacts/util/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/motorola/contacts/util/EcidContact;->m_isNanp:Z

    .line 85
    iput-boolean v0, p0, Lcom/motorola/contacts/util/EcidContact;->m_bNoOutgoingCallRestriction:Z

    return-void
.end method

.method public static clearEcidContacts()V
    .locals 2

    .prologue
    .line 101
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/motorola/contacts/util/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    sget-boolean v0, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EcidContact"

    const-string v1, "clearEcidContacts()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static computeDisplayName(Ljava/lang/String;Landroid/widget/TextView;)Ljava/lang/String;
    .locals 12
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "cityIDView"    # Landroid/widget/TextView;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/motorola/contacts/util/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/motorola/contacts/util/EcidContact;

    move-result-object v1

    .line 381
    .local v1, "info":Lcom/motorola/contacts/util/EcidContact;
    const/4 v6, 0x0

    .line 383
    .local v6, "strCityID":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v9, ""

    .line 420
    :goto_0
    return-object v9

    .line 388
    :cond_1
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    const/16 v10, 0x96

    if-le v9, v10, :cond_3

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result v7

    .line 389
    .local v7, "wAvailable":I
    :goto_1
    sget-boolean v9, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "EcidContact"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wAvailable is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_2
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 393
    .local v5, "paint":Landroid/graphics/Paint;
    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 394
    iget-object v6, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateName:Ljava/lang/String;

    :goto_2
    move-object v9, v6

    .line 420
    goto :goto_0

    .line 388
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v7    # "wAvailable":I
    :cond_3
    const/16 v7, 0x12c

    goto :goto_1

    .line 395
    .restart local v5    # "paint":Landroid/graphics/Paint;
    .restart local v7    # "wAvailable":I
    :cond_4
    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 398
    if-eqz v7, :cond_6

    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    iget-object v10, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v9, v10

    const-string v10, ", "

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v9, v10

    int-to-float v10, v7

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 399
    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    float-to-int v0, v9

    .line 400
    .local v0, "curCityNameWidth":I
    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    const-string v10, "..., "

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    add-float/2addr v9, v10

    float-to-int v4, v9

    .line 401
    .local v4, "otherStrWidth":I
    sub-int v3, v7, v4

    .line 403
    .local v3, "maxCityNameWidth":I
    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 404
    .local v2, "len":I
    new-array v8, v2, [F

    .line 405
    .local v8, "widths":[F
    iget-object v9, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v5, v9, v8}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 406
    :goto_3
    if-le v0, v3, :cond_5

    if-lez v2, :cond_5

    .line 407
    add-int/lit8 v9, v2, -0x1

    aget v9, v8, v9

    float-to-int v9, v9

    sub-int/2addr v0, v9

    .line 408
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 411
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "..., "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 412
    goto/16 :goto_2

    .line 413
    .end local v0    # "curCityNameWidth":I
    .end local v2    # "len":I
    .end local v3    # "maxCityNameWidth":I
    .end local v4    # "otherStrWidth":I
    .end local v8    # "widths":[F
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/motorola/contacts/util/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 417
    :cond_7
    iget-object v6, v1, Lcom/motorola/contacts/util/EcidContact;->m_countryName:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method public static doCacheLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/motorola/contacts/util/EcidContact;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .prologue
    .line 134
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EcidContact"

    const-string v2, "doCacheLookup: ECID AOSP VERSION: 4.1.1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-static {p1}, Lcom/motorola/contacts/util/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/motorola/contacts/util/EcidContact;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    .line 140
    :cond_1
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/motorola/contacts/util/EcidContact;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberType"    # I

    .prologue
    const/4 v2, 0x0

    .line 115
    const-string v1, "EcidContact"

    const-string v3, "doLookup: ECID AOSP VERSION: 4.1.1"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    new-instance v0, Lcom/motorola/contacts/util/EcidContact;

    invoke-direct {v0}, Lcom/motorola/contacts/util/EcidContact;-><init>()V

    .line 118
    .local v0, "cidContact":Lcom/motorola/contacts/util/EcidContact;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/contacts/util/EcidContact;->m_number:Ljava/lang/String;

    .line 119
    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/motorola/contacts/util/EcidContact;->implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    .line 120
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/motorola/contacts/util/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "added cidContact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/motorola/contacts/util/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "cidContact":Lcom/motorola/contacts/util/EcidContact;
    :cond_0
    :goto_1
    return-object v0

    .restart local v0    # "cidContact":Lcom/motorola/contacts/util/EcidContact;
    :cond_1
    move v1, v2

    .line 119
    goto :goto_0

    .line 126
    .end local v0    # "cidContact":Lcom/motorola/contacts/util/EcidContact;
    :cond_2
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 272
    sget-boolean v2, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "EcidContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactName() for phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "phoneNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/motorola/contacts/util/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/motorola/contacts/util/EcidContact;

    move-result-object v0

    .line 276
    .local v0, "info":Lcom/motorola/contacts/util/EcidContact;
    if-nez v0, :cond_2

    .line 277
    sget-boolean v2, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "EcidContact"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactName skip: getEcidContact return null for phone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_1
    const/4 v2, 0x0

    .line 281
    :goto_0
    return-object v2

    :cond_2
    invoke-virtual {v0}, Lcom/motorola/contacts/util/EcidContact;->getContactName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getContainerHeight()I
    .locals 5

    .prologue
    .line 428
    :try_start_0
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->m_isEcidEnabled:Z

    if-eqz v1, :cond_1

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "layout_height":I
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->mKeepContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 432
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->mKeepContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 442
    .end local v0    # "layout_height":I
    :goto_0
    return v0

    .line 435
    .restart local v0    # "layout_height":I
    :cond_0
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->mKeepContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getEcidContact(Ljava/lang/String;)Lcom/motorola/contacts/util/EcidContact;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "phoneNumber":Ljava/lang/String;
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/contacts/util/EcidContact;

    return-object v1
.end method

.method static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "nColumn"    # I

    .prologue
    .line 261
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isECIDAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 447
    sget-boolean v2, Lcom/motorola/contacts/util/EcidContact;->m_alreadyCheckedPackage:Z

    if-nez v2, :cond_0

    .line 448
    sput-boolean v3, Lcom/motorola/contacts/util/EcidContact;->m_alreadyCheckedPackage:Z

    .line 449
    sput-boolean v4, Lcom/motorola/contacts/util/EcidContact;->m_isEcidEnabled:Z

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 452
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 454
    :try_start_0
    const-string v2, "com.cequint.ecid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 455
    const/4 v2, 0x1

    sput-boolean v2, Lcom/motorola/contacts/util/EcidContact;->m_isEcidEnabled:Z

    .line 456
    sput-object p0, Lcom/motorola/contacts/util/EcidContact;->mKeepContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/motorola/contacts/util/EcidContact;->m_isEcidEnabled:Z

    return v2

    .line 457
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sput-boolean v4, Lcom/motorola/contacts/util/EcidContact;->m_isEcidEnabled:Z

    goto :goto_0
.end method

.method static readColumnIds(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "c"    # Landroid/database/Cursor;

    .prologue
    .line 188
    const-string v0, "_ID"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_ID:I

    .line 189
    const-string v0, "_COUNT"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_COUNT:I

    .line 190
    const-string v0, "cid_pNumber"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NUMBER:I

    .line 191
    const-string v0, "cid_pCityName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_CITY:I

    .line 192
    const-string v0, "cid_pStateName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_STATE:I

    .line 193
    const-string v0, "cid_pStateAbbr"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_STATE_ABBR:I

    .line 194
    const-string v0, "cid_pCountryName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_COUNTRY:I

    .line 195
    const-string v0, "cid_pCompany"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_COMPANY:I

    .line 196
    const-string v0, "cid_pName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NAME:I

    .line 197
    const-string v0, "cid_pFirstName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_FIRST_NAME:I

    .line 198
    const-string v0, "cid_pLastName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_LAST_NAME:I

    .line 199
    const-string v0, "cid_bNoOutgoingCallRestriction"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    .line 200
    const-string v0, "cid_pDisplayName"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/contacts/util/EcidContact;->COLUMN_DISPLAY_NAME:I

    .line 201
    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/motorola/contacts/util/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/motorola/contacts/util/EcidContact;->m_bizName:Ljava/lang/String;

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContactDisplayName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 309
    iget-object v7, p0, Lcom/motorola/contacts/util/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    move v1, v5

    .line 310
    .local v1, "bHasFName":Z
    :goto_0
    iget-object v7, p0, Lcom/motorola/contacts/util/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    move v2, v5

    .line 311
    .local v2, "bHasLName":Z
    :goto_1
    iget-object v7, p0, Lcom/motorola/contacts/util/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move v0, v5

    .line 312
    .local v0, "bHasBizName":Z
    :goto_2
    iget-object v7, p0, Lcom/motorola/contacts/util/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    move v3, v5

    .line 314
    .local v3, "bHasName":Z
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v4, "sb":Ljava/lang/StringBuilder;
    if-nez v1, :cond_0

    if-eqz v2, :cond_8

    .line 318
    :cond_0
    if-eqz v1, :cond_1

    .line 320
    iget-object v5, p0, Lcom/motorola/contacts/util/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    if-eqz v2, :cond_1

    .line 322
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_1
    if-eqz v2, :cond_2

    .line 325
    iget-object v5, p0, Lcom/motorola/contacts/util/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :cond_2
    :goto_4
    sget-boolean v5, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "EcidContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "gDN len "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sb string is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a

    .line 338
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    :goto_5
    return-object v5

    .end local v0    # "bHasBizName":Z
    .end local v1    # "bHasFName":Z
    .end local v2    # "bHasLName":Z
    .end local v3    # "bHasName":Z
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    move v1, v6

    .line 309
    goto :goto_0

    .restart local v1    # "bHasFName":Z
    :cond_5
    move v2, v6

    .line 310
    goto :goto_1

    .restart local v2    # "bHasLName":Z
    :cond_6
    move v0, v6

    .line 311
    goto :goto_2

    .restart local v0    # "bHasBizName":Z
    :cond_7
    move v3, v6

    .line 312
    goto :goto_3

    .line 327
    .restart local v3    # "bHasName":Z
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_8
    if-eqz v0, :cond_9

    .line 329
    iget-object v5, p0, Lcom/motorola/contacts/util/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 331
    :cond_9
    if-eqz v3, :cond_2

    .line 333
    iget-object v5, p0, Lcom/motorola/contacts/util/EcidContact;->m_cname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 339
    :cond_a
    sget-boolean v5, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v5, :cond_b

    const-string v5, "EcidContact"

    const-string v6, "null Contact Display Name"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_b
    const/4 v5, 0x0

    goto :goto_5
.end method

.method public getContactName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 286
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactName() for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/contacts/util/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/motorola/contacts/util/EcidContact;->m_displayName:Ljava/lang/String;

    .line 289
    .local v0, "contactDisplayName":Ljava/lang/String;
    :goto_0
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactName: num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/contacts/util/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    const-string v1, "Unknown Name"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 293
    .end local v0    # "contactDisplayName":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/contacts/util/EcidContact;->getContactDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 293
    .restart local v0    # "contactDisplayName":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public implLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strNumber"    # Ljava/lang/CharSequence;
    .param p3, "isSystemProvided"    # Z
    .param p4, "isNotNanp"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 209
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 218
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p4, :cond_5

    .line 219
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    if-eqz p3, :cond_4

    const-string v1, "system"

    :goto_0
    aput-object v1, v4, v9

    const-string v1, "NOT-NANP"

    aput-object v1, v4, v8

    .line 223
    .local v4, "flags":[Ljava/lang/String;
    :goto_1
    if-nez p4, :cond_7

    move v1, v8

    :goto_2
    iput-boolean v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_isNanp:Z

    .line 225
    const/4 v6, 0x0

    .line 227
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/contacts/util/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 233
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 235
    invoke-static {v6}, Lcom/motorola/contacts/util/EcidContact;->readColumnIds(Landroid/database/Cursor;)V

    .line 236
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NUMBER:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_callerId:Ljava/lang/String;

    .line 237
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_CITY:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_cityName:Ljava/lang/String;

    .line 238
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_STATE:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_stateName:Ljava/lang/String;

    .line 239
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_STATE_ABBR:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_stateAbbr:Ljava/lang/String;

    .line 240
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_COUNTRY:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_countryName:Ljava/lang/String;

    .line 242
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_COMPANY:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_bizName:Ljava/lang/String;

    .line 243
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NAME:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_cname:Ljava/lang/String;

    .line 244
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_FIRST_NAME:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_firstName:Ljava/lang/String;

    .line 245
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_LAST_NAME:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_lastName:Ljava/lang/String;

    .line 246
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_DISPLAY_NAME:I

    invoke-static {v6, v1}, Lcom/motorola/contacts/util/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/contacts/util/EcidContact;->m_displayName:Ljava/lang/String;

    .line 247
    sget-boolean v1, Lcom/motorola/contacts/util/EcidContact;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "implLookup - m_displayName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/contacts/util/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    if-ltz v1, :cond_2

    .line 249
    sget v1, Lcom/motorola/contacts/util/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_8

    :goto_3
    iput-boolean v8, p0, Lcom/motorola/contacts/util/EcidContact;->m_bNoOutgoingCallRestriction:Z

    .line 256
    :cond_2
    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_3
    :goto_5
    return-void

    .line 219
    .end local v4    # "flags":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const-string v1, "user"

    goto/16 :goto_0

    .line 221
    :cond_5
    new-array v4, v8, [Ljava/lang/String;

    if-eqz p3, :cond_6

    const-string v1, "system"

    :goto_6
    aput-object v1, v4, v9

    .restart local v4    # "flags":[Ljava/lang/String;
    goto/16 :goto_1

    .end local v4    # "flags":[Ljava/lang/String;
    :cond_6
    const-string v1, "user"

    goto :goto_6

    .restart local v4    # "flags":[Ljava/lang/String;
    :cond_7
    move v1, v9

    .line 223
    goto/16 :goto_2

    .line 228
    .restart local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 229
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "EcidContact"

    const-string v2, "No CityID found, SQLiteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_8
    move v8, v9

    .line 249
    goto :goto_3

    .line 254
    :cond_9
    const-string v1, "EcidContact"

    const-string v2, "No CityID found"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
