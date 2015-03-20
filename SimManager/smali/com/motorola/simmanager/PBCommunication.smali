.class Lcom/motorola/simmanager/PBCommunication;
.super Ljava/lang/Object;
.source "PBCommunication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    return-void
.end method

.method private static convertEqualCondition(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 128
    if-nez p0, :cond_0

    .line 129
    const-string v0, "IS NULL"

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static convertName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "contact_name"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 107
    .local v1, "convName":Ljava/lang/StringBuffer;
    move-object v3, p0

    .line 108
    :goto_0
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 110
    .local v2, "index":I
    const/4 v5, 0x0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "tempString":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "buffer":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "convName":Ljava/lang/StringBuffer;
    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v1    # "convName":Ljava/lang/StringBuffer;
    :goto_1
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    move-object v3, v0

    .line 118
    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 119
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v4    # "tempString":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 120
    new-instance v1, Ljava/lang/StringBuffer;

    .end local v1    # "convName":Ljava/lang/StringBuffer;
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 124
    .restart local v1    # "convName":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 122
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static getSimValidDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
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
    .line 136
    .local p0, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 137
    const/4 v2, 0x0

    .line 146
    :cond_0
    return-object v2

    .line 139
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, "valid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, "detail":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static isContactNameNumMatchFound(Landroid/content/ContentResolver;Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 20
    .param p0, "c"    # Landroid/content/ContentResolver;
    .param p1, "simInfo"    # Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountType"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v13, 0x0

    .line 55
    .local v13, "found":Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 56
    :cond_0
    const/4 v2, 0x0

    .line 98
    :goto_0
    return v2

    .line 58
    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mName:Ljava/lang/String;

    invoke-static {v2}, Lcom/motorola/simmanager/PBCommunication;->convertName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 59
    .local v10, "convName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data1 LIKE \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 61
    .local v14, "name_selection":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/motorola/simmanager/PBCommunication;->convertEqualCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, "accountNameCondition":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Lcom/motorola/simmanager/PBCommunication;->convertEqualCondition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, "accountTypeCondition":Ljava/lang/String;
    const-string v17, " FROM raw_contacts WHERE _id = raw_contact_id"

    .line 65
    .local v17, "rawIdEqual_from":Ljava/lang/String;
    const/4 v11, 0x0

    .line 67
    .local v11, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mimetype=\'vnd.android.cursor.item/name\' AND ((SELECT deleted"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ) <> 1)"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "((SELECT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "account_name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ) "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "((SELECT "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "account_type"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " ) "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 74
    if-nez v11, :cond_3

    .line 97
    if-eqz v11, :cond_2

    .line 98
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    move v2, v13

    goto/16 :goto_0

    .line 77
    :cond_3
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 78
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    if-eqz v11, :cond_4

    .line 98
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_4
    move v2, v13

    goto/16 :goto_0

    .line 82
    :cond_5
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mPhones:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/motorola/simmanager/PBCommunication;->getSimValidDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v19

    .line 83
    .local v19, "simValidNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/motorola/simmanager/SIMCommunication$SimPeopleInfo;->mEmails:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/motorola/simmanager/PBCommunication;->getSimValidDetails(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v18

    .line 84
    .local v18, "simValidEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    :cond_6
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 87
    .local v15, "rawContactId":Ljava/lang/Long;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 88
    .local v16, "rawContactUri":Landroid/net/Uri;
    const-string v2, "entity"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 89
    .local v12, "entityUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/motorola/simmanager/PBCommunication;->isNumbersEqual(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Lcom/motorola/simmanager/PBCommunication;->isEmailsEqual(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 90
    const/4 v13, 0x1

    .line 94
    :cond_7
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    if-eqz v11, :cond_8

    .line 98
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    move v2, v13

    goto/16 :goto_0

    .line 93
    :cond_9
    if-nez v13, :cond_7

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    .line 97
    .end local v12    # "entityUri":Landroid/net/Uri;
    .end local v15    # "rawContactId":Ljava/lang/Long;
    .end local v16    # "rawContactUri":Landroid/net/Uri;
    .end local v18    # "simValidEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "simValidNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_a

    .line 98
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method private static isDetailsEqual(Landroid/database/Cursor;Ljava/util/ArrayList;Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;)Z
    .locals 8
    .param p0, "entityCursor"    # Landroid/database/Cursor;
    .param p2, "cmp"    # Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "simValidDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 193
    if-nez p1, :cond_3

    .line 194
    if-nez p0, :cond_1

    move v4, v5

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    move v7, v5

    :goto_1
    or-int/2addr v4, v7

    if-eqz v4, :cond_0

    move v6, v5

    .line 229
    :cond_0
    :goto_2
    return v6

    :cond_1
    move v4, v6

    .line 194
    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    .line 201
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 202
    .local v3, "simValidDetailsCnt":I
    if-eqz p0, :cond_4

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_5

    .line 203
    :cond_4
    if-nez v3, :cond_0

    move v6, v5

    .line 204
    goto :goto_2

    .line 209
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 212
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    :cond_6
    invoke-interface {p0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_8

    .line 215
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "detail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 217
    .local v1, "find":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_7

    .line 218
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p2, v0, v4}, Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;->Compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 219
    const/4 v1, 0x1

    .line 223
    :cond_7
    if-eqz v1, :cond_0

    .line 227
    .end local v0    # "detail":Ljava/lang/String;
    .end local v1    # "find":Z
    .end local v2    # "i":I
    :cond_8
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_6

    move v6, v5

    .line 229
    goto :goto_2

    .line 217
    .restart local v0    # "detail":Ljava/lang/String;
    .restart local v1    # "find":Z
    .restart local v2    # "i":I
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private static isEmailsEqual(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "entityUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "simValidEmails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 171
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data1"

    aput-object v1, v2, v0

    const-string v3, "mimetype = \'vnd.android.cursor.item/email_v2\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 174
    new-instance v0, Lcom/motorola/simmanager/PBCommunication$2;

    invoke-direct {v0}, Lcom/motorola/simmanager/PBCommunication$2;-><init>()V

    invoke-static {v6, p2, v0}, Lcom/motorola/simmanager/PBCommunication;->isDetailsEqual(Landroid/database/Cursor;Ljava/util/ArrayList;Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 181
    if-eqz v6, :cond_0

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 181
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method private static isNumbersEqual(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/util/ArrayList;)Z
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "entityUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "simValidNumbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 152
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data1"

    aput-object v1, v2, v0

    const-string v3, "mimetype = \'vnd.android.cursor.item/phone_v2\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    new-instance v0, Lcom/motorola/simmanager/PBCommunication$1;

    invoke-direct {v0}, Lcom/motorola/simmanager/PBCommunication$1;-><init>()V

    invoke-static {v6, p2, v0}, Lcom/motorola/simmanager/PBCommunication;->isDetailsEqual(Landroid/database/Cursor;Ljava/util/ArrayList;Lcom/motorola/simmanager/PBCommunication$SimDetailCompare;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 162
    if-eqz v6, :cond_0

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    .line 162
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 163
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
