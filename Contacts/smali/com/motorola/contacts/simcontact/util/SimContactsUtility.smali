.class public Lcom/motorola/contacts/simcontact/util/SimContactsUtility;
.super Ljava/lang/Object;
.source "SimContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_NAME_TYPE:[Ljava/lang/String;

.field private static final SIMCARD_COLUMN_NAMES:[Ljava/lang/String;

.field public static final SIM_CAPABILITY_URI:Landroid/net/Uri;

.field public static final SIM_CAPACITY_URI:Landroid/net/Uri;

.field public static final SIM_CONTENT_URI:Landroid/net/Uri;

.field public static final SIM_FREESPACE_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;

.field private static final USIM_COLUMN_NAMES:[Ljava/lang/String;

.field private static mDialog:Landroid/app/AlertDialog;

.field private static notification:Landroid/app/Notification;

.field private static sCCardType:I

.field private static sGCardType:I

.field private static sLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const-class v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    .line 104
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIMCARD_COLUMN_NAMES:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v4

    const-string v1, "emails"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "number2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->USIM_COLUMN_NAMES:[Ljava/lang/String;

    .line 116
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "account_name"

    aput-object v1, v0, v3

    const-string v1, "account_type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->ACCOUNT_NAME_TYPE:[Ljava/lang/String;

    .line 132
    sput-boolean v4, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sLoaded:Z

    .line 140
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CONTENT_URI:Landroid/net/Uri;

    .line 141
    const-string v0, "content://icc/freeadn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_FREESPACE_URI:Landroid/net/Uri;

    .line 142
    const-string v0, "content://icc/adncapacity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CAPACITY_URI:Landroid/net/Uri;

    .line 143
    const-string v0, "content://icc/capability/pbk"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CAPABILITY_URI:Landroid/net/Uri;

    .line 156
    sput v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sCCardType:I

    .line 157
    sput v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sGCardType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static SimCard_AddContact(Landroid/content/ContentResolver;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p2, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    if-nez p2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v3

    .line 413
    :cond_1
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v0

    .line 415
    .local v0, "simType":I
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getUriByType(I)Landroid/net/Uri;

    move-result-object v1

    .line 416
    .local v1, "simUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 419
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSIMPeople(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)V

    .line 421
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v2, "values":Landroid/content/ContentValues;
    if-ne v0, v4, :cond_3

    .line 425
    const-string v5, "tag"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v5, "number"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    .line 440
    goto :goto_0

    .line 429
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 431
    const-string v5, "tag"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v5, "number"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v5, "number2"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v5, "emails"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v5, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cvmq63, let\'s check values before inserting.."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0
.end method

.method public static SimCard_DeleteContact(Landroid/content/ContentResolver;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 501
    if-nez p2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return v2

    .line 504
    :cond_1
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v0

    .line 506
    .local v0, "simType":I
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getUriByType(I)Landroid/net/Uri;

    move-result-object v1

    .line 507
    .local v1, "simUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 510
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSIMPeople(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)V

    .line 512
    if-eq v0, v3, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 514
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "number2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "emails="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v1, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :cond_3
    move v2, v3

    .line 518
    goto/16 :goto_0
.end method

.method public static SimCard_UpdateContact(Landroid/content/ContentResolver;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pOldInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p2, "pNewInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p3, "type"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 452
    if-nez p3, :cond_1

    .line 489
    :cond_0
    :goto_0
    return v3

    .line 455
    :cond_1
    invoke-static {p3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v0

    .line 457
    .local v0, "simType":I
    invoke-static {p3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getUriByType(I)Landroid/net/Uri;

    move-result-object v1

    .line 458
    .local v1, "simUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 461
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSIMPeople(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)V

    .line 462
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSIMPeople(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)V

    .line 464
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v2, "values":Landroid/content/ContentValues;
    if-ne v0, v4, :cond_3

    .line 467
    const-string v5, "tag"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "number"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v5, "newTag"

    iget-object v6, p2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v5, "newNumber"

    iget-object v6, p2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0, v1, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    :cond_2
    move v3, v4

    .line 489
    goto :goto_0

    .line 475
    :cond_3
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 477
    const-string v5, "tag"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v5, "number"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v5, "emails"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v5, "number2"

    iget-object v6, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string v5, "newTag"

    iget-object v6, p2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v5, "newNumber"

    iget-object v6, p2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string v5, "newEmails"

    iget-object v6, p2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v5, "newNumber2"

    iget-object v6, p2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0, v1, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_2

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 95
    sput-object p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public static addCallerIsSyncAdapter(Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "isSyncOperation"    # Z

    .prologue
    .line 665
    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 677
    .end local p0    # "uri":Landroid/net/Uri;
    :cond_0
    return-object p0
.end method

.method public static buildOldSimName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 239
    if-nez p0, :cond_0

    .line 240
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v1, "buildOldSimName, Return empty name instead of null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string p0, ""

    .line 243
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static buildSIMPeople(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)V
    .locals 1
    .param p0, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 192
    :cond_3
    return-void
.end method

.method public static buildSimNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p0, :cond_1

    .line 196
    const-string v0, ""

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :cond_1
    const-string v1, "[^0-9*#p+,;]*"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 201
    const-string v0, ""

    goto :goto_0
.end method

.method public static buildSimString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cont"    # Ljava/lang/String;

    .prologue
    .line 206
    if-nez p0, :cond_1

    .line 207
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "Return empty string instead of null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v0, ""

    .line 213
    :cond_0
    :goto_0
    return-object v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 212
    const-string v0, ""

    goto :goto_0
.end method

.method public static bulkInsertSimContacts(Landroid/content/Context;Ljava/util/ArrayList;I)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    const/4 v7, 0x0

    .line 523
    .local v7, "nCount":I
    const-string v2, "SIM card"

    .line 524
    .local v2, "accountName":Ljava/lang/String;
    const-string v3, "com.card.contacts"

    .line 525
    .local v3, "accountType":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .local v4, "cardAccount":Landroid/accounts/Account;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 527
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 528
    .local v8, "nSize":I
    div-int/lit8 v9, v8, 0x4

    .line 529
    .local v9, "nStep":I
    const/16 v12, 0x14

    if-ge v9, v12, :cond_3

    .line 530
    const/16 v9, 0x14

    .line 535
    :cond_0
    :goto_0
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bulkInsertSimContacts, size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v10, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 539
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .line 540
    .local v11, "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v10, v4, v11, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->insertOneSimContacts(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 541
    add-int/lit8 v7, v7, 0x1

    .line 543
    :cond_2
    rem-int v12, v7, v9

    if-nez v12, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 544
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", op_size = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "com.android.contacts"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 552
    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 531
    .end local v10    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v11    # "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_3
    const/16 v12, 0x50

    if-le v9, v12, :cond_0

    .line 532
    const/16 v9, 0x50

    goto :goto_0

    .line 547
    .restart local v10    # "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v11    # "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :catch_0
    move-exception v5

    .line 548
    .local v5, "e":Landroid/os/RemoteException;
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v13, "%s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 549
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 550
    .local v5, "e":Landroid/content/OperationApplicationException;
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v13, "%s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 556
    .end local v5    # "e":Landroid/content/OperationApplicationException;
    .end local v11    # "pInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 557
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "applyBtach, left = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "com.android.contacts"

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    .line 566
    :cond_5
    :goto_3
    return v7

    .line 560
    :catch_2
    move-exception v5

    .line 561
    .local v5, "e":Landroid/os/RemoteException;
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v13, "%s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 562
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v5

    .line 563
    .local v5, "e":Landroid/content/OperationApplicationException;
    sget-object v12, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v13, "%s: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static cancelSyncNotification(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1510
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1511
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1512
    return-void
.end method

.method private static checkErrorMsg(IILandroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1443
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    .line 1445
    invoke-static {}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->dismissAnyDialog()V

    .line 1446
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1447
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1448
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1449
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1450
    const v1, 0x104000a

    new-instance v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$1;

    invoke-direct {v2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1455
    new-instance v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$2;

    invoke-direct {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1460
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    .line 1461
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1463
    const/4 v0, 0x0

    .line 1465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkIfSimCardIsFull(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1479
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->queryAllSimType(Landroid/content/ContentResolver;)V

    .line 1480
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getFreeSpace(Landroid/content/ContentResolver;)I

    move-result v0

    .line 1481
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getCapacity(Landroid/content/ContentResolver;)I

    move-result v1

    .line 1482
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfSimCardIsFull: freeSpace = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", capacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const v2, 0x7f0b0237

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1484
    const v3, 0x7f0b0238

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1485
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 1486
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v1, "SIM card is full"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1488
    const v1, 0x1080078

    .line 1489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1490
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 1492
    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1494
    :cond_0
    return-void
.end method

.method public static checkPeopleInfo(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z
    .locals 3
    .param p0, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 909
    if-nez p1, :cond_1

    .line 923
    :cond_0
    :goto_0
    return v0

    .line 911
    :cond_1
    invoke-static {p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isUSIMType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 912
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 913
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "checkPeopleInfo, failed, USIM"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 914
    goto :goto_0

    .line 919
    :cond_2
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "checkPeopleInfo, failed, SIM"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 921
    goto :goto_0
.end method

.method public static deleteContactInDB(Landroid/content/ContentResolver;J)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v4, 0x0

    .line 871
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 874
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 875
    return-void
.end method

.method public static deleteSIMAccountMembers(Landroid/content/ContentResolver;)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v4, 0x0

    .line 687
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "begin deleteSIMAccountMembers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    const-string v3, "SIM card"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    const-string v3, "com.card.contacts"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 693
    .local v0, "deleteWithCorrectAccountUri":Landroid/net/Uri;
    invoke-virtual {p0, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 694
    return-void
.end method

.method public static diffPeopleInfoList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    .local p1, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    const/4 v6, 0x2

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "found":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 808
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .line 809
    .local v3, "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    const/4 v0, 0x0

    .line 810
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 811
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .line 813
    .local v4, "oldInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    iget v5, v4, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    if-nez v5, :cond_2

    invoke-static {v4, v3}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isPeopleInfoEqual(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 815
    iput v6, v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    .line 816
    iput v6, v4, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    .line 817
    const/4 v0, 0x1

    .line 821
    .end local v4    # "oldInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_0
    if-nez v0, :cond_1

    .line 823
    const/4 v5, 0x1

    iput v5, v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    .line 807
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 810
    .restart local v4    # "oldInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 826
    .end local v2    # "j":I
    .end local v3    # "newInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .end local v4    # "oldInfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :cond_3
    return-void
.end method

.method public static dismissAnyDialog()V
    .locals 1

    .prologue
    .line 1471
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1472
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1473
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->mDialog:Landroid/app/AlertDialog;

    .line 1475
    :cond_0
    return-void
.end method

.method public static getCapacity(Landroid/content/ContentResolver;)I
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 1095
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    .line 1096
    .local v10, "type":I
    if-nez v10, :cond_0

    move v6, v0

    .line 1130
    :goto_0
    return v6

    .line 1099
    :cond_0
    invoke-static {}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSIMLoadStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1100
    const/4 v6, -0x2

    goto :goto_0

    .line 1103
    :cond_1
    const/4 v1, 0x0

    .line 1104
    .local v1, "simUri":Landroid/net/Uri;
    const/4 v6, -0x1

    .line 1106
    .local v6, "capacity":I
    invoke-static {v10}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v9

    .line 1107
    .local v9, "simType":I
    if-nez v9, :cond_2

    move v6, v0

    .line 1108
    goto :goto_0

    .line 1110
    :cond_2
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CAPACITY_URI:Landroid/net/Uri;

    .line 1112
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIMCARD_COLUMN_NAMES:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1114
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1116
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1117
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1123
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1125
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1119
    :catch_0
    move-exception v8

    .line 1120
    .local v8, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapacity, throw exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1129
    :cond_4
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getCapacity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getContactTypeById(Landroid/content/ContentResolver;J)I
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J

    .prologue
    .line 1000
    const/4 v9, 0x0

    .line 1001
    .local v9, "rawContactIdCursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1002
    .local v6, "accountName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1003
    .local v7, "accountType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1004
    .local v10, "type":I
    new-instance v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct {v8}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 1007
    .local v8, "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->ACCOUNT_NAME_TYPE:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1008
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1010
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1011
    const-string v0, "com.card.contacts"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    .line 1016
    :cond_0
    if-eqz v9, :cond_1

    .line 1017
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1020
    :cond_1
    return v10

    .line 1016
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 1017
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getFreeSpace(Landroid/content/ContentResolver;)I
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 1070
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1071
    .local v0, "type":I
    if-nez v0, :cond_0

    .line 1072
    const/4 v1, -0x1

    .line 1078
    :goto_0
    return v1

    .line 1074
    :cond_0
    invoke-static {}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSIMLoadStatus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1075
    const/4 v1, -0x2

    goto :goto_0

    .line 1078
    :cond_1
    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getFreeSpaceCom(Landroid/content/ContentResolver;)I

    move-result v1

    goto :goto_0
.end method

.method public static getFreeSpaceCom(Landroid/content/ContentResolver;)I
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v3, 0x0

    .line 1039
    const/4 v1, 0x0

    .line 1040
    .local v1, "simUri":Landroid/net/Uri;
    const/4 v8, -0x1

    .line 1041
    .local v8, "freeSpace":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    .line 1042
    .local v10, "type":I
    invoke-static {v10}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v9

    .line 1043
    .local v9, "simType":I
    if-nez v9, :cond_0

    .line 1044
    const/4 v0, -0x1

    .line 1066
    :goto_0
    return v0

    .line 1046
    :cond_0
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_FREESPACE_URI:Landroid/net/Uri;

    .line 1048
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIMCARD_COLUMN_NAMES:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1050
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1052
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 1059
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1061
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getFreeSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1062
    goto :goto_0

    .line 1055
    :catch_0
    move-exception v7

    .line 1056
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFreeSpace, throw exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1059
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1065
    :cond_2
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getFreeSpace = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 1066
    goto/16 :goto_0
.end method

.method public static getIccId(I)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 1138
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1139
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 1140
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 1142
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getIccType(Landroid/content/ContentResolver;I)I
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I

    .prologue
    .line 1134
    invoke-static {p0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSingleModeSimType(Landroid/content/ContentResolver;I)I

    move-result v0

    return v0
.end method

.method public static getPeopleInfoById(Landroid/content/ContentResolver;JLcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z
    .locals 16
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J
    .param p3, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .prologue
    .line 935
    const/4 v11, 0x0

    .line 936
    .local v11, "firstNumber":Ljava/lang/String;
    const/4 v14, 0x0

    .line 937
    .local v14, "secondaryNumber":Ljava/lang/String;
    const/4 v13, 0x0

    .line 938
    .local v13, "rawContactIdCursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 940
    .local v10, "firstEmail":Ljava/lang/String;
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPeopleInfoById, query number, rawContactId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "data1"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 945
    if-eqz v13, :cond_2

    .line 946
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 947
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 948
    .local v12, "phoneNumber":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 949
    if-nez v11, :cond_1

    .line 950
    move-object v11, v12

    goto :goto_0

    .line 951
    :cond_1
    if-nez v14, :cond_2

    .line 952
    move-object v14, v12

    .line 961
    .end local v12    # "phoneNumber":Ljava/lang/String;
    :cond_2
    if-eqz v13, :cond_3

    .line 962
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 968
    :cond_3
    :try_start_1
    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "data1"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 969
    if-eqz v13, :cond_6

    .line 970
    :cond_4
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 971
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 972
    .local v9, "email":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_4

    if-nez v10, :cond_4

    .line 973
    move-object v10, v9

    goto :goto_1

    .line 961
    .end local v9    # "email":Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_5

    .line 962
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 978
    :cond_6
    if-eqz v13, :cond_7

    .line 979
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 983
    :cond_7
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPeopleInfoById, query name, rawContactId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static/range {p0 .. p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getStructuredName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    iput-object v3, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 985
    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 986
    move-object/from16 v0, p3

    iput-object v14, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 987
    move-object/from16 v0, p3

    iput-object v10, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 988
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput v3, v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->diffStatus:I

    .line 989
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleId:J

    .line 991
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPeopleInfoById, get Contact type, rawContactId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    invoke-static/range {p0 .. p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getContactTypeById(Landroid/content/ContentResolver;J)I

    move-result v15

    .line 994
    .local v15, "type":I
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPeopleInfoById, checkPeopleInfo, rawContactId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    move-object/from16 v0, p3

    invoke-static {v0, v15}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkPeopleInfo(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z

    move-result v3

    return v3

    .line 978
    .end local v15    # "type":I
    :catchall_1
    move-exception v3

    if-eqz v13, :cond_8

    .line 979
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method public static getSIMAccountMembers(Landroid/content/ContentResolver;ILjava/util/ArrayList;)Z
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    const/4 v11, 0x1

    .line 840
    const/4 v10, 0x0

    .line 841
    .local v10, "rawContactIdCursor":Landroid/database/Cursor;
    const-string v6, "SIM card"

    .line 842
    .local v6, "accountName":Ljava/lang/String;
    const-wide/16 v8, -0x1

    .line 845
    .local v8, "rawContactId":J
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type=\'com.card.contacts\' AND account_name=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 847
    if-eqz v10, :cond_2

    .line 848
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 849
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 850
    new-instance v7, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct {v7}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 851
    .local v7, "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    invoke-static {p0, v8, v9, v7}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getPeopleInfoById(Landroid/content/ContentResolver;JLcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 857
    .end local v7    # "info":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_1

    .line 858
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 857
    :cond_2
    if-eqz v10, :cond_3

    .line 858
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 861
    :cond_3
    return v11
.end method

.method public static getSIMLoadStatus()Z
    .locals 1

    .prologue
    .line 1173
    sget-boolean v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sLoaded:Z

    return v0
.end method

.method public static getSimCardContacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    const/4 v1, 0x0

    .line 312
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1

    .line 313
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v3, "getSimCardContacts, simphonebook service is not ready!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    :goto_0
    return v1

    .line 317
    :cond_1
    if-eqz p2, :cond_0

    .line 320
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v0

    .line 321
    .local v0, "simType":I
    if-eqz v0, :cond_0

    .line 324
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 325
    invoke-static {p0, p1, p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->get_Sim_Contacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z

    move-result v1

    goto :goto_0

    .line 326
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 327
    invoke-static {p0, p1, p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->get_USim_Contacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z

    move-result v1

    goto :goto_0
.end method

.method public static getSimType(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 293
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 294
    sget v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sCCardType:I

    .line 299
    :goto_0
    return v0

    .line 296
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 297
    sget v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sGCardType:I

    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSingleModeSimType(Landroid/content/ContentResolver;I)I
    .locals 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I

    .prologue
    .line 1177
    const/4 v10, 0x0

    .line 1178
    .local v10, "simType":I
    const-string v7, "YES"

    .line 1180
    .local v7, "isYes":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    .line 1181
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 1182
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1184
    const/4 v9, 0x0

    .line 1186
    .local v9, "simCursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CAPABILITY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->USIM_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1187
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1190
    .local v6, "email":Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1191
    .local v8, "number2":Ljava/lang/String;
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "email="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", number2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1193
    const/4 v10, 0x2

    .line 1198
    .end local v6    # "email":Ljava/lang/String;
    .end local v8    # "number2":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 1199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1204
    .end local v9    # "simCursor":Landroid/database/Cursor;
    :cond_1
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSingleModeSimType, simType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    return v10

    .line 1195
    .restart local v6    # "email":Ljava/lang/String;
    .restart local v8    # "number2":Ljava/lang/String;
    .restart local v9    # "simCursor":Landroid/database/Cursor;
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 1198
    .end local v6    # "email":Ljava/lang/String;
    .end local v8    # "number2":Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 1199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getStructuredName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v4, 0x0

    .line 753
    const/4 v7, 0x0

    .line 754
    .local v7, "peopleName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 756
    .local v8, "rawContactIdCursor":Landroid/database/Cursor;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const-string v3, "data"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 758
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data1"

    aput-object v0, v2, v4

    .line 761
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    const-string v3, "mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 763
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 766
    .local v6, "displayName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 767
    move-object v7, v6

    .line 770
    .end local v6    # "displayName":Ljava/lang/String;
    :cond_0
    if-eqz v8, :cond_1

    .line 771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 774
    :cond_1
    return-object v7

    .line 770
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 771
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getUriByType(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1032
    if-nez p0, :cond_0

    .line 1033
    const/4 v0, 0x0

    .line 1035
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIM_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private static get_Sim_Contacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 336
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getUriByType(I)Landroid/net/Uri;

    move-result-object v1

    .line 337
    .local v1, "simUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    move v0, v9

    .line 361
    :goto_0
    return v0

    .line 340
    :cond_0
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->SIMCARD_COLUMN_NAMES:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 342
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 344
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    new-instance v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct {v8}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 346
    .local v8, "pinfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    const-wide/16 v2, -0x1

    iput-wide v2, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleId:J

    .line 347
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 348
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 350
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 352
    .end local v8    # "pinfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :catch_0
    move-exception v7

    .line 355
    .local v7, "ex":Ljava/lang/Exception;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 357
    goto :goto_0

    .line 355
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 360
    :cond_2
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "sim card query failed!!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 361
    goto :goto_0
.end method

.method private static get_USim_Contacts(Landroid/content/ContentResolver;Ljava/util/ArrayList;I)Z
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 368
    invoke-static {p2}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getUriByType(I)Landroid/net/Uri;

    move-result-object v1

    .line 370
    .local v1, "simUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 372
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->USIM_COLUMN_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    if-eqz v6, :cond_3

    .line 376
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    new-instance v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct {v8}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 378
    .local v8, "pinfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    const-wide/16 v2, -0x1

    iput-wide v2, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleId:J

    .line 379
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 380
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 381
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 382
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 383
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "usim card, [name]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[number]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[number2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[email]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 390
    .end local v8    # "pinfo":Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    :catch_0
    move-exception v7

    .line 391
    .local v7, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    if-eqz v6, :cond_0

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move v0, v9

    .line 399
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 394
    :cond_1
    if-eqz v6, :cond_2

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    goto :goto_1

    .line 394
    :cond_3
    if-eqz v6, :cond_4

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_4
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "Usim card query failed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v9

    .line 399
    goto :goto_1

    .line 394
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 395
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static insertOneContacts(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Z)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p4, "sync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, "isSyncOperation":Z
    if-eqz p4, :cond_0

    .line 583
    const/4 v1, 0x1

    .line 585
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 587
    .local v2, "numOperations":I
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->addCallerIsSyncAdapter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 589
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v3, "account_name"

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 590
    const-string v3, "account_type"

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 596
    if-eqz p4, :cond_4

    .line 597
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 598
    const-string v3, "sync1"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 600
    :cond_1
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 601
    const-string v3, "sync2"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 603
    :cond_2
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 604
    const-string v3, "sync3"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 606
    :cond_3
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 607
    const-string v3, "sync4"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 610
    :cond_4
    invoke-virtual {v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    .line 611
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 614
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->addCallerIsSyncAdapter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 615
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 616
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 617
    const-string v3, "data3"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 618
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_5
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 621
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->addCallerIsSyncAdapter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 622
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 623
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 624
    const-string v3, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 625
    const-string v3, "data1"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 626
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 627
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_6
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 631
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->addCallerIsSyncAdapter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 632
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 633
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 634
    const-string v3, "data2"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 635
    const-string v3, "data1"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 636
    const-string v3, "is_primary"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 637
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_7
    iget-object v3, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 641
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->addCallerIsSyncAdapter(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 642
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 643
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 644
    const-string v3, "data2"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 645
    const-string v3, "data1"

    iget-object v4, p3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 646
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 647
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_8
    return v5
.end method

.method public static insertOneSimContacts(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "pInfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            "I)Z"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p3, p4}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkPeopleInfo(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v1, "error, not a valid contact, cancel insertOneSimContacts !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/4 v0, 0x0

    .line 575
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->insertOneContacts(Landroid/content/Context;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPeopleInfoEqual(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;)Z
    .locals 2
    .param p0, "pinfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .param p1, "orginfo"    # Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    .prologue
    .line 783
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_5
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimContactsFeatureSupported(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 1552
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isSimReady(I)Z
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 1209
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simType type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUSIMType(I)Z
    .locals 2
    .param p0, "type"    # I

    .prologue
    .line 1028
    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getSimType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static prepareSIMInfo(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/account/AccountType;)Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;
    .locals 7

    .prologue
    .line 1287
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v1, "Entering prepareSIMInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    new-instance v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    invoke-direct {v1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;-><init>()V

    .line 1290
    invoke-virtual {p1}, Lcom/android/contacts/model/account/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/DataKind;

    .line 1291
    iget-object v3, v0, Lcom/android/contacts/model/dataitem/DataKind;->mimeType:Ljava/lang/String;

    .line 1292
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/RawContactDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1293
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    .line 1299
    const-string v5, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1300
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 1301
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "peopleName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1302
    :cond_2
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1303
    iget-object v5, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1304
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 1305
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default primaryNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1306
    :cond_3
    const-string v5, "is_primary"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_4

    .line 1307
    iget-object v5, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    iput-object v5, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 1308
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 1309
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user set primaryNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1311
    :cond_4
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 1312
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "secondaryNumber = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1314
    :cond_5
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1315
    const-string v5, "data1"

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 1316
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "primaryEmail = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1321
    :cond_6
    iget-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 1322
    const-string v0, ""

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    .line 1326
    :goto_1
    iget-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    .line 1327
    iget-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    .line 1328
    iget-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->buildSimString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    .line 1329
    return-object v1

    .line 1324
    :cond_7
    iget-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    goto :goto_1
.end method

.method public static printPeopleInfo(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 833
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 834
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;

    goto :goto_0

    .line 836
    :cond_0
    return-void
.end method

.method public static queryAllSimType(Landroid/content/ContentResolver;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 281
    sget-boolean v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sLoaded:Z

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 286
    .local v0, "type":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    sget v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sCCardType:I

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sGCardType:I

    if-nez v1, :cond_0

    .line 288
    :cond_3
    invoke-static {p0, v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->querySimType(Landroid/content/ContentResolver;I)V

    goto :goto_0
.end method

.method public static querySimType(Landroid/content/ContentResolver;I)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I

    .prologue
    .line 271
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 272
    invoke-static {p0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getIccType(Landroid/content/ContentResolver;I)I

    move-result v0

    sput v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sCCardType:I

    .line 274
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 275
    invoke-static {p0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getIccType(Landroid/content/ContentResolver;I)I

    move-result v0

    sput v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sGCardType:I

    .line 277
    :cond_1
    return-void
.end method

.method public static requestSyncFromCardToContact(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 891
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v1, "call requestSyncFromCardToContact()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/contacts/simcontact/service/CardObserverService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 894
    const-string v1, "register_card_observer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 895
    const-string v1, "register_contact_observer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 896
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 899
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    const-string v1, "EVENT_SYNC_DELTA_FROM_CARD_TO_CONTACT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 901
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 902
    return-void
.end method

.method public static requestSyncFromContactToCard(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 878
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v1, "call requestSyncFromContactToCard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/contacts/simcontact/service/CardObserverService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 881
    const-string v1, "register_card_observer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    const-string v1, "register_contact_observer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 883
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 885
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/contacts/simcontact/service/CardOperationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    const-string v1, "EVENT_SYNC_DELTA_FROM_CONTACT_TO_CARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 887
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 888
    return-void
.end method

.method public static resetSimType(I)V
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 262
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 263
    sput v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sCCardType:I

    .line 265
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 266
    sput v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sGCardType:I

    .line 268
    :cond_1
    return-void
.end method

.method public static setSIMLoadStatus(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 1169
    sput-boolean p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->sLoaded:Z

    .line 1170
    return-void
.end method

.method public static showSyncNotification(Landroid/content/Context;II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1497
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1498
    const v1, 0x108007c

    .line 1499
    const v2, 0x7f0b0233

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1500
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1501
    const v2, 0x7f0b0234

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1502
    const v3, 0x7f0b0235

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1503
    new-instance v4, Landroid/app/Notification$Builder;

    invoke-direct {v4, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v6}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    sput-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->notification:Landroid/app/Notification;

    .line 1506
    const/16 v1, 0x3e8

    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1507
    return-void
.end method

.method public static updateContactSettingsUngroupedVisible(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1517
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1519
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "caller_is_syncadapter"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1522
    const-string v2, "account_name=? AND account_type=?"

    .line 1523
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p1, v4, v8

    aput-object p2, v4, v7

    .line 1525
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1529
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "account_name=? AND account_type=?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1530
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 1532
    const-string v3, "ungrouped_visible"

    if-eqz p3, :cond_1

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1533
    const-string v3, "account_name=? AND account_type=?"

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1545
    :goto_1
    if-eqz v2, :cond_0

    .line 1546
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v7, v8

    .line 1532
    goto :goto_0

    .line 1536
    :cond_2
    :try_start_2
    const-string v3, "account_name"

    invoke-virtual {v9, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    const-string v3, "account_type"

    invoke-virtual {v9, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    const-string v4, "ungrouped_visible"

    if-eqz p3, :cond_3

    move v3, v7

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1539
    const-string v4, "should_sync"

    if-eqz p4, :cond_4

    move v3, v7

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1540
    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1542
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 1543
    :goto_5
    :try_start_3
    sget-object v1, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v2, "contact provider was dead, ignore this operation."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1545
    if-eqz v0, :cond_0

    .line 1546
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_3
    move v3, v8

    .line 1538
    goto :goto_3

    :cond_4
    move v3, v8

    .line 1539
    goto :goto_4

    .line 1545
    :catchall_0
    move-exception v0

    move-object v2, v6

    :goto_6
    if-eqz v2, :cond_5

    .line 1546
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1545
    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 1542
    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_5
.end method

.method public static validateEntriesBeforeSave(Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;Landroid/content/Context;)Z
    .locals 10

    .prologue
    const v2, 0x7f0b022b

    const/16 v9, 0x29

    const/16 v8, 0x28

    const v1, 0x7f0b022c

    const/4 v3, 0x0

    .line 1333
    sget-object v0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v4, "Enter validateEntriesBeforeSave()"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->isUSIMType(I)Z

    move-result v4

    .line 1335
    const v5, 0x7f0b0222

    .line 1336
    const/4 v0, -0x1

    .line 1339
    iget-object v6, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xe

    if-le v6, v7, :cond_0

    .line 1340
    const v0, 0x7f0b0230

    .line 1342
    :cond_0
    invoke-static {v0, v5, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v3

    .line 1439
    :goto_0
    return v0

    .line 1346
    :cond_1
    const-string v6, "gsm.mot.usim.support.ext1"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1348
    if-eqz v4, :cond_a

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1350
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v6, "start check USIM card and has extension block:"

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1354
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_2

    move v0, v1

    .line 1360
    :cond_2
    :goto_1
    invoke-static {v0, v5, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v3

    .line 1361
    goto :goto_0

    .line 1357
    :cond_3
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v8, :cond_2

    move v0, v1

    .line 1358
    goto :goto_1

    .line 1365
    :cond_4
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1366
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_7

    .line 1372
    :cond_5
    :goto_2
    invoke-static {v1, v5, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 1373
    goto :goto_0

    .line 1369
    :cond_6
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v8, :cond_5

    :cond_7
    move v1, v0

    goto :goto_2

    .line 1377
    :cond_8
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_9

    .line 1378
    const v1, 0x7f0b022d

    .line 1380
    :cond_9
    invoke-static {v1, v5, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v3

    .line 1381
    goto :goto_0

    .line 1385
    :cond_a
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    const-string v6, "+"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1386
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x15

    if-le v1, v6, :cond_b

    move v0, v2

    .line 1392
    :cond_b
    :goto_3
    invoke-static {v0, v5, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v3

    .line 1393
    goto/16 :goto_0

    .line 1389
    :cond_c
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v6, 0x14

    if-le v1, v6, :cond_b

    move v0, v2

    .line 1390
    goto :goto_3

    .line 1397
    :cond_d
    if-nez v4, :cond_e

    .line 1399
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1400
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1401
    sget-object v2, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM empty check: nameIsEmpty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", primaryNumberIsEmpty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    if-nez v0, :cond_10

    if-eqz v1, :cond_10

    .line 1405
    const v0, 0x7f0b021f

    .line 1406
    const v1, 0x7f0b0223

    .line 1407
    invoke-static {v1, v0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v3

    .line 1408
    goto/16 :goto_0

    .line 1413
    :cond_e
    iget-object v0, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->peopleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1414
    iget-object v1, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1415
    iget-object v2, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->secondaryNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1416
    iget-object v4, p0, Lcom/motorola/contacts/simcontact/util/SimContactsUtility$PeopleInfo;->primaryEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1417
    sget-object v5, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USIM empty check: nameIsEmpty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", primaryNumberIsEmpty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",secondaryNumberIsEmpty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",primaryEmailIsEmpty="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    if-nez v0, :cond_f

    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    if-eqz v4, :cond_f

    .line 1422
    const v5, 0x7f0b0220

    .line 1423
    const v6, 0x7f0b0225

    .line 1424
    invoke-static {v6, v5, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_f

    move v0, v3

    .line 1425
    goto/16 :goto_0

    .line 1429
    :cond_f
    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    if-eqz v2, :cond_10

    if-nez v4, :cond_10

    .line 1431
    const v0, 0x7f0b0221

    .line 1432
    const v1, 0x7f0b0224

    .line 1433
    invoke-static {v1, v0, p1}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->checkErrorMsg(IILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v3

    .line 1434
    goto/16 :goto_0

    .line 1439
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static waitSimCardIccId(I)Ljava/lang/String;
    .locals 6
    .param p0, "slotPhoneType"    # I

    .prologue
    .line 1146
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    const-string v4, "begin waitSimCardIccId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/4 v1, 0x0

    .line 1148
    .local v1, "iccId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1150
    .local v2, "retry":I
    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 1151
    invoke-static {p0}, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 1152
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1153
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detect SIM card iccid, try times is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .line 1165
    :goto_1
    return-object v3

    .line 1156
    :cond_0
    sget-object v3, Lcom/motorola/contacts/simcontact/util/SimContactsUtility;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim card iccid is not ready, try times is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 1165
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
