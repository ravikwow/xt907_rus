.class Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/RawContactDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/editor/ContactEditorFragment;
    .param p2, "x1"    # Lcom/android/contacts/editor/ContactEditorFragment$1;

    .prologue
    .line 1379
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)I
    .locals 21
    .param p1, "one"    # Lcom/android/contacts/model/RawContactDelta;
    .param p2, "two"    # Lcom/android/contacts/model/RawContactDelta;

    .prologue
    .line 1386
    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/model/RawContactDelta;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1387
    const/16 v16, 0x0

    .line 1457
    :cond_0
    :goto_0
    return v16

    .line 1390
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v17, v0

    # getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 1391
    .local v4, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1392
    .local v2, "accountType1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1393
    .local v5, "dataSet1":Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v14

    .line 1394
    .local v14, "type1":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1395
    .local v3, "accountType2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1396
    .local v6, "dataSet2":Ljava/lang/String;
    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v15

    .line 1399
    .local v15, "type2":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v14}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v15}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 1400
    const/16 v16, 0x1

    goto :goto_0

    .line 1401
    :cond_2
    invoke-virtual {v14}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-virtual {v15}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1402
    const/16 v16, -0x1

    goto :goto_0

    .line 1406
    :cond_3
    const/4 v11, 0x0

    .line 1407
    .local v11, "skipAccountTypeCheck":Z
    instance-of v7, v14, Lcom/android/contacts/model/account/GoogleAccountType;

    .line 1408
    .local v7, "isGoogleAccount1":Z
    instance-of v8, v15, Lcom/android/contacts/model/account/GoogleAccountType;

    .line 1409
    .local v8, "isGoogleAccount2":Z
    if-eqz v7, :cond_4

    if-nez v8, :cond_4

    .line 1410
    const/16 v16, -0x1

    goto :goto_0

    .line 1411
    :cond_4
    if-nez v7, :cond_5

    if-eqz v8, :cond_5

    .line 1412
    const/16 v16, 0x1

    goto :goto_0

    .line 1413
    :cond_5
    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 1414
    const/4 v11, 0x1

    .line 1418
    :cond_6
    if-nez v11, :cond_8

    .line 1419
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 1420
    const/16 v16, 0x1

    goto :goto_0

    .line 1422
    :cond_7
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 1423
    .local v16, "value":I
    if-nez v16, :cond_0

    .line 1427
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    .line 1428
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 1429
    if-nez v16, :cond_0

    .line 1439
    .end local v16    # "value":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 1440
    .local v9, "oneAccount":Ljava/lang/String;
    if-nez v9, :cond_9

    const-string v9, ""

    .line 1441
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v12

    .line 1442
    .local v12, "twoAccount":Ljava/lang/String;
    if-nez v12, :cond_a

    const-string v12, ""

    .line 1443
    :cond_a
    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 1444
    .restart local v16    # "value":I
    if-nez v16, :cond_0

    .line 1449
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v10

    .line 1450
    .local v10, "oneId":Ljava/lang/Long;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v13

    .line 1451
    .local v13, "twoId":Ljava/lang/Long;
    if-nez v10, :cond_c

    .line 1452
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 1432
    .end local v9    # "oneAccount":Ljava/lang/String;
    .end local v10    # "oneId":Ljava/lang/Long;
    .end local v12    # "twoAccount":Ljava/lang/String;
    .end local v13    # "twoId":Ljava/lang/Long;
    :cond_b
    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1433
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1453
    .restart local v9    # "oneAccount":Ljava/lang/String;
    .restart local v10    # "oneId":Ljava/lang/Long;
    .restart local v12    # "twoAccount":Ljava/lang/String;
    .restart local v13    # "twoId":Ljava/lang/Long;
    :cond_c
    if-nez v13, :cond_d

    .line 1454
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1457
    :cond_d
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1379
    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/contacts/model/RawContactDelta;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->compare(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)I

    move-result v0

    return v0
.end method
