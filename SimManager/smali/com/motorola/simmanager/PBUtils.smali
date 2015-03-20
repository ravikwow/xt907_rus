.class public Lcom/motorola/simmanager/PBUtils;
.super Ljava/lang/Object;
.source "PBUtils.java"


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/motorola/simmanager/PBUtils;->DBG:Z

    .line 38
    const-string v0, "PBUtils"

    sput-object v0, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllContactsByContactId(Landroid/content/ContentResolver;IZI)Ljava/util/ArrayList;
    .locals 31
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "id"    # I
    .param p2, "truncateName"    # Z
    .param p3, "maxNameLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/motorola/simmanager/Utils;->getUnRestrictedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id LIKE \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 317
    .local v24, "person":Landroid/database/Cursor;
    if-eqz v24, :cond_f

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_f

    .line 318
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v22, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v14, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 321
    .local v10, "displayName":Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 322
    .local v8, "columnRawIdIndex":I
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 324
    :cond_0
    move-object/from16 v0, v24

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 325
    .local v27, "rawId":J
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v27

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v26

    .line 326
    .local v26, "rawContactUri":Landroid/net/Uri;
    const-string v2, "entity"

    move-object/from16 v0, v26

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 327
    .local v3, "entityUri":Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "data_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "mimetype"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "data1"

    aput-object v5, v4, v2

    const-string v5, "mimetype=\"vnd.android.cursor.item/name\" OR mimetype=\"vnd.android.cursor.item/phone_v2\" OR mimetype=\"vnd.android.cursor.item/email_v2\""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 333
    .local v15, "entityCursor":Landroid/database/Cursor;
    if-eqz v15, :cond_8

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_8

    .line 334
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    .line 335
    const-string v2, "mimetype"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 336
    .local v17, "mimeIndex":I
    const-string v2, "data1"

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 338
    .local v9, "dataIndex":I
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 339
    const/16 v21, 0x0

    .line 340
    .local v21, "number":Ljava/lang/String;
    const/4 v13, 0x0

    .line 341
    .local v13, "email":Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v15, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, "mimeType":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 343
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 344
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    .line 352
    .end local v13    # "email":Ljava/lang/String;
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 353
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 357
    .end local v9    # "dataIndex":I
    .end local v17    # "mimeIndex":I
    :cond_3
    :goto_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 360
    invoke-static/range {p0 .. p1}, Lcom/motorola/simmanager/PBUtils;->queryContactDisplayName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v10

    .line 361
    if-eqz p2, :cond_4

    .line 362
    move/from16 v0, p3

    invoke-static {v10, v0}, Lcom/motorola/simmanager/SIMCommunication;->truncateSIMName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 365
    :cond_4
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .local v30, "simInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;>;"
    const/16 v19, 0x0

    .local v19, "nIndex":I
    const/4 v11, 0x0

    .local v11, "eIndex":I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_5

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_6

    .line 367
    :cond_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-lt v0, v2, :cond_9

    invoke-static {}, Lcom/motorola/simmanager/SIMCommunication;->getEmailCount()I

    move-result v2

    if-gtz v2, :cond_9

    .line 396
    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v8    # "columnRawIdIndex":I
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v11    # "eIndex":I
    .end local v14    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "entityCursor":Landroid/database/Cursor;
    .end local v19    # "nIndex":I
    .end local v22    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "rawContactUri":Landroid/net/Uri;
    .end local v27    # "rawId":J
    .end local v30    # "simInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;>;"
    :cond_6
    :goto_3
    return-object v30

    .line 346
    .restart local v3    # "entityUri":Landroid/net/Uri;
    .restart local v8    # "columnRawIdIndex":I
    .restart local v9    # "dataIndex":I
    .restart local v10    # "displayName":Ljava/lang/String;
    .restart local v13    # "email":Ljava/lang/String;
    .restart local v14    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "entityCursor":Landroid/database/Cursor;
    .restart local v17    # "mimeIndex":I
    .restart local v18    # "mimeType":Ljava/lang/String;
    .restart local v21    # "number":Ljava/lang/String;
    .restart local v22    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "rawContactUri":Landroid/net/Uri;
    .restart local v27    # "rawId":J
    :cond_7
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 348
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "email = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/simmanager/SMUtils;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v9    # "dataIndex":I
    .end local v13    # "email":Ljava/lang/String;
    .end local v17    # "mimeIndex":I
    .end local v18    # "mimeType":Ljava/lang/String;
    .end local v21    # "number":Ljava/lang/String;
    :cond_8
    if-eqz v15, :cond_3

    .line 355
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 370
    .restart local v11    # "eIndex":I
    .restart local v19    # "nIndex":I
    .restart local v30    # "simInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;>;"
    :cond_9
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v11, v2, :cond_a

    invoke-static {}, Lcom/motorola/simmanager/SIMCommunication;->getPhoneNumberCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 373
    :cond_a
    new-instance v23, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;

    invoke-direct/range {v23 .. v23}, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;-><init>()V

    .line 374
    .local v23, "people":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v25, "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v23

    iput-object v10, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    .line 376
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    invoke-static {}, Lcom/motorola/simmanager/SIMCommunication;->getPhoneNumberCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_c

    .line 377
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_b

    .line 378
    add-int/lit8 v20, v19, 0x1

    .end local v19    # "nIndex":I
    .local v20, "nIndex":I
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v19, v20

    .line 376
    .end local v20    # "nIndex":I
    .restart local v19    # "nIndex":I
    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 382
    :cond_c
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    .line 384
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v29, "simEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    :goto_5
    invoke-static {}, Lcom/motorola/simmanager/SIMCommunication;->getEmailCount()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_e

    .line 386
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_d

    .line 387
    add-int/lit8 v12, v11, 0x1

    .end local v11    # "eIndex":I
    .local v12, "eIndex":I
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v12

    .line 385
    .end local v12    # "eIndex":I
    .restart local v11    # "eIndex":I
    :cond_d
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 390
    :cond_e
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    .line 391
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 394
    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v8    # "columnRawIdIndex":I
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v11    # "eIndex":I
    .end local v14    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "entityCursor":Landroid/database/Cursor;
    .end local v16    # "i":I
    .end local v19    # "nIndex":I
    .end local v22    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "people":Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    .end local v25    # "phones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "rawContactUri":Landroid/net/Uri;
    .end local v27    # "rawId":J
    .end local v29    # "simEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v30    # "simInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;>;"
    :cond_f
    if-eqz v24, :cond_10

    .line 395
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_10
    const/16 v30, 0x0

    goto/16 :goto_3
.end method

.method public static getAllContactsForIdentity(Landroid/content/ContentResolver;ILandroid/content/Context;ZI)Landroid/database/Cursor;
    .locals 22
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "id"    # I
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "truncateName"    # Z
    .param p4, "maxNameLength"    # I

    .prologue
    .line 148
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Lcom/motorola/simmanager/Utils;->getUnRestrictedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id LIKE \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 151
    .local v18, "person":Landroid/database/Cursor;
    new-instance v9, Landroid/database/MatrixCursor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "phone_number"

    aput-object v5, v2, v4

    invoke-direct {v9, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 153
    .local v9, "cur":Landroid/database/MatrixCursor;
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_7

    .line 154
    const-string v2, "_id"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 155
    .local v8, "columnRawIdIndex":I
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 157
    :cond_0
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 158
    .local v20, "rawId":J
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 159
    .local v19, "rawContactUri":Landroid/net/Uri;
    const-string v2, "entity"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 160
    .local v3, "entityUri":Landroid/net/Uri;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "data_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "mimetype"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "data1"

    aput-object v5, v4, v2

    const-string v5, "mimetype=\"vnd.android.cursor.item/name\" OR mimetype=\"vnd.android.cursor.item/phone_v2\""

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 165
    .local v12, "entityCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_6

    .line 166
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 167
    const-string v2, "mimetype"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 168
    .local v14, "mimeIndex":I
    const-string v2, "data1"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 169
    .local v10, "dataIndex":I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v17, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 172
    .local v11, "displayName":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 173
    const/16 v16, 0x0

    .line 174
    .local v16, "number":Ljava/lang/String;
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 175
    .local v15, "mimeType":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 177
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v15    # "mimeType":Ljava/lang/String;
    .end local v16    # "number":Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-static/range {p0 .. p1}, Lcom/motorola/simmanager/PBUtils;->queryContactDisplayName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v11

    .line 182
    if-eqz p3, :cond_3

    .line 183
    move/from16 v0, p4

    invoke-static {v11, v0}, Lcom/motorola/simmanager/SIMCommunication;->truncateSIMName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 185
    :cond_3
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_4

    .line 186
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v2, v4

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v9, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 185
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 188
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 189
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 192
    .end local v10    # "dataIndex":I
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v13    # "index":I
    .end local v14    # "mimeIndex":I
    .end local v17    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 198
    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v8    # "columnRawIdIndex":I
    .end local v9    # "cur":Landroid/database/MatrixCursor;
    .end local v12    # "entityCursor":Landroid/database/Cursor;
    .end local v19    # "rawContactUri":Landroid/net/Uri;
    .end local v20    # "rawId":J
    :goto_2
    return-object v9

    .line 190
    .restart local v3    # "entityUri":Landroid/net/Uri;
    .restart local v8    # "columnRawIdIndex":I
    .restart local v9    # "cur":Landroid/database/MatrixCursor;
    .restart local v12    # "entityCursor":Landroid/database/Cursor;
    .restart local v19    # "rawContactUri":Landroid/net/Uri;
    .restart local v20    # "rawId":J
    :cond_6
    if-eqz v12, :cond_5

    .line 191
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 196
    .end local v3    # "entityUri":Landroid/net/Uri;
    .end local v8    # "columnRawIdIndex":I
    .end local v12    # "entityCursor":Landroid/database/Cursor;
    .end local v19    # "rawContactUri":Landroid/net/Uri;
    .end local v20    # "rawId":J
    :cond_7
    if-eqz v18, :cond_8

    .line 197
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 424
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNameExceedLimitation(Landroid/content/ContentResolver;II)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # I
    .param p2, "MaxNameLength"    # I

    .prologue
    .line 428
    invoke-static {p0, p1}, Lcom/motorola/simmanager/PBUtils;->queryContactDisplayName(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "displayName":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static queryContactDisplayName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # I

    .prologue
    .line 401
    const/4 v6, 0x0

    .line 403
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 404
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 405
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 406
    :cond_0
    const-string v7, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v7

    .line 408
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "displayName":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 410
    :cond_3
    const-string v7, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v7    # "displayName":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 411
    .restart local v7    # "displayName":Ljava/lang/String;
    :cond_4
    :try_start_2
    sget-object v0, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 413
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "displayName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 414
    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v0, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not query displayName for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v7, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    if-eqz v6, :cond_1

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 417
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 418
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method public static saveContactToPB(Landroid/content/Context;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "simPeople"    # Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;

    .prologue
    .line 223
    if-nez p1, :cond_1

    const/16 v18, 0x0

    .line 309
    :cond_0
    :goto_0
    return v18

    .line 224
    :cond_1
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    .line 226
    .local v8, "name":Ljava/lang/String;
    sget-boolean v18, Lcom/motorola/simmanager/PBUtils;->DBG:Z

    if-eqz v18, :cond_2

    .line 227
    sget-object v18, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Contact Name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    const/16 v17, 0x0

    .line 230
    .local v17, "values":Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 231
    .local v12, "rawContactUri":Landroid/net/Uri;
    const-wide/16 v13, 0x0

    .line 232
    .local v13, "raw_id":J
    invoke-static/range {p2 .. p2}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static/range {p3 .. p3}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 233
    new-instance v17, Landroid/content/ContentValues;

    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string v18, "send_to_voicemail"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v18, "starred"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    const-string v18, "version"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    const-string v18, "deleted"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    if-eqz v8, :cond_3

    .line 239
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_3
    const-string v18, "times_contacted"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 242
    const-string v18, "account_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v12

    .line 255
    if-nez v12, :cond_5

    .line 256
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 245
    :cond_4
    new-instance v17, Landroid/content/ContentValues;

    .end local v17    # "values":Landroid/content/ContentValues;
    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 246
    .restart local v17    # "values":Landroid/content/ContentValues;
    const-string v18, "send_to_voicemail"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 247
    const-string v18, "starred"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    const-string v18, "version"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 249
    const-string v18, "deleted"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    const-string v18, "display_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v18, "times_contacted"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 258
    :cond_5
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v13

    .line 260
    const/4 v4, 0x0

    .line 261
    .local v4, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 262
    .local v3, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v10, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v15, "account_type=? and group_visible=1"

    .line 264
    .local v15, "sel":Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    aput-object p3, v16, v18

    .line 265
    .local v16, "selArgs":[Ljava/lang/String;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v11, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, "_id"

    aput-object v19, v11, v18

    .line 268
    .local v11, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 269
    const-string v18, "raw_contact_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 270
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 271
    const-string v18, "data2"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 272
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    .line 276
    .local v9, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_8

    .line 277
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_6

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_7

    .line 276
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 280
    :cond_7
    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 281
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 282
    const-string v18, "raw_contact_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 283
    const-string v18, "data1"

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 284
    const-string v18, "data2"

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 285
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 301
    .end local v7    # "i":I
    .end local v9    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v5

    .line 302
    .local v5, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v18, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    const/16 v18, 0x0

    .line 305
    if-eqz v4, :cond_0

    .line 306
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 288
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "i":I
    .restart local v9    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    :try_start_2
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    .line 289
    .local v6, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_9

    .line 290
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_9

    .line 291
    sget-object v18, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 292
    const-string v18, "mimetype"

    const-string v19, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 293
    const-string v18, "raw_contact_id"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 294
    const-string v18, "data1"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 295
    const-string v18, "data2"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 296
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 300
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "com.android.contacts"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 305
    if-eqz v4, :cond_a

    .line 306
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 305
    .end local v6    # "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i":I
    .end local v9    # "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v18

    if-eqz v4, :cond_b

    .line 306
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v18
.end method

.method public static saveContactToPB(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "accountType"    # Ljava/lang/String;

    .prologue
    .line 65
    sget-boolean v12, Lcom/motorola/simmanager/PBUtils;->DBG:Z

    if-eqz v12, :cond_0

    .line 66
    sget-object v12, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Contact Name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Contact Number: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const/4 v11, 0x0

    .line 69
    .local v11, "values":Landroid/content/ContentValues;
    const/4 v6, 0x0

    .line 70
    .local v6, "rawContactUri":Landroid/net/Uri;
    const-wide/16 v7, 0x0

    .line 71
    .local v7, "raw_id":J
    invoke-static/range {p3 .. p3}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/motorola/simmanager/PBUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 72
    new-instance v11, Landroid/content/ContentValues;

    .end local v11    # "values":Landroid/content/ContentValues;
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v12, "send_to_voicemail"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v12, "starred"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    const-string v12, "version"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 76
    const-string v12, "deleted"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    if-eqz p1, :cond_1

    .line 78
    const-string v12, "display_name"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    const-string v12, "times_contacted"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v12, "account_name"

    move-object/from16 v0, p3

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v12, "account_type"

    move-object/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 94
    if-nez v6, :cond_4

    .line 95
    const/4 v12, 0x0

    .line 130
    :cond_2
    :goto_1
    return v12

    .line 84
    :cond_3
    new-instance v11, Landroid/content/ContentValues;

    .end local v11    # "values":Landroid/content/ContentValues;
    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .restart local v11    # "values":Landroid/content/ContentValues;
    const-string v12, "send_to_voicemail"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v12, "starred"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v12, "version"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v12, "deleted"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string v12, "display_name"

    move-object/from16 v0, p1

    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v12, "times_contacted"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 97
    :cond_4
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 101
    .local v1, "builder":Landroid/content/ContentProviderOperation$Builder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v4, "operationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v9, "account_type=? and group_visible=1"

    .line 103
    .local v9, "sel":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p4, v10, v12

    .line 104
    .local v10, "selArgs":[Ljava/lang/String;
    const/4 v12, 0x1

    new-array v5, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "_id"

    aput-object v13, v5, v12

    .line 107
    .local v5, "projection":[Ljava/lang/String;
    :try_start_0
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 108
    const-string v12, "raw_contact_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 109
    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 110
    const-string v12, "data2"

    move-object/from16 v0, p1

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 115
    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 116
    const-string v12, "raw_contact_id"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 117
    const-string v12, "data1"

    move-object/from16 v0, p2

    invoke-virtual {v1, v12, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 118
    const-string v12, "data2"

    const/4 v13, 0x2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 119
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "com.android.contacts"

    invoke-virtual {v12, v13, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    if-eqz v2, :cond_5

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_5
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 122
    :catch_0
    move-exception v3

    .line 123
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v12, Lcom/motorola/simmanager/PBUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    const/4 v12, 0x0

    .line 126
    if-eqz v2, :cond_2

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 126
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    if-eqz v2, :cond_6

    .line 127
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v12
.end method
