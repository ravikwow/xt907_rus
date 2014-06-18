.class public Lcom/android/contacts/ContactSaveService;
.super Landroid/app/IntentService;
.source "ContactSaveService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactSaveService$JoinContactQuery;,
        Lcom/android/contacts/ContactSaveService$Listener;
    }
.end annotation


# static fields
.field private static final ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/contacts/ContactSaveService$Listener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 128
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data15"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    .line 154
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 160
    const-string v0, "ContactSaveService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactSaveService;->setIntentRedelivery(Z)V

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    .line 163
    return-void
.end method

.method private static addMembersToGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactsToAdd"    # [J
    .param p2, "groupId"    # J

    .prologue
    .line 737
    if-nez p1, :cond_1

    .line 785
    :cond_0
    return-void

    .line 740
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-wide v6, v0, v3

    .line 742
    .local v6, "rawContactId":J
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 746
    .local v8, "rawContactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 748
    .local v1, "assertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "vnd.android.cursor.item/group_membership"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 752
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    .line 753
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v9, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 758
    .local v4, "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "raw_contact_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 759
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 760
    const-string v9, "data1"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 761
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 771
    const-string v9, "com.android.contacts"

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 740
    .end local v1    # "assertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v4    # "insertBuilder":Landroid/content/ContentProviderOperation$Builder;
    .end local v8    # "rawContactOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 773
    :catch_0
    move-exception v2

    .line 775
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "ContactSaveService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Problem persisting user edits for raw contact ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 777
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 780
    .local v2, "e":Landroid/content/OperationApplicationException;
    const-string v9, "ContactSaveService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Assert failed in adding raw contact ID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Already exists in group "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private buildJoinContactDiff(Ljava/util/ArrayList;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;JJ)V"
        }
    .end annotation

    .prologue
    .line 1109
    sget-object v0, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 1111
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1112
    const-string v1, "raw_contact_id1"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1113
    const-string v1, "raw_contact_id2"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1114
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    return-void
.end method

.method private clearPrimary(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 918
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 919
    .local v0, "dataId":J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 920
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for clearPrimary request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :goto_0
    return-void

    .line 925
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 926
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 929
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 911
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 912
    const-string v1, "clearPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 914
    return-object v0
.end method

.method public static createDeleteContactIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 937
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 938
    const-string v1, "delete"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 940
    return-object v0
.end method

.method private createGroup(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 573
    const-string v9, "accountType"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    .local v1, "accountType":Ljava/lang/String;
    const-string v9, "accountName"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    .local v0, "accountName":Ljava/lang/String;
    const-string v9, "dataSet"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, "dataSet":Ljava/lang/String;
    const-string v9, "groupLabel"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 577
    .local v5, "label":Ljava/lang/String;
    const-string v9, "rawContactsToAdd"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 579
    .local v6, "rawContactsToAdd":[J
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "account_type"

    invoke-virtual {v8, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v9, "account_name"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v9, "data_set"

    invoke-virtual {v8, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const-string v9, "title"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 588
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 592
    .local v4, "groupUri":Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 593
    const-string v9, "ContactSaveService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t create group with label "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    invoke-static {v7, v6, v9, v10}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 602
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 603
    const-string v9, "mimetype"

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v9, "data1"

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    const-string v9, "callbackIntent"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 607
    .local v2, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 609
    const-string v9, "data"

    const/4 v10, 0x1

    new-array v10, v10, [Landroid/content/ContentValues;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v10}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 610
    invoke-direct {p0, v2}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static createGroupDeletionIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 654
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 655
    const-string v1, "deleteGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 657
    return-object v0
.end method

.method public static createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/lang/String;",
            "[J[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 689
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 690
    const-string v1, "updateGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 691
    const-string v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 692
    const-string v1, "groupLabel"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v1, "rawContactsToAdd"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 694
    const-string v1, "rawContactsToRemove"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 698
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 699
    invoke-virtual {v1, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 702
    return-object v0
.end method

.method public static createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 963
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 964
    const-string v1, "joinContacts"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 965
    const-string v1, "contactId1"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 966
    const-string v1, "contactId2"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 967
    const-string v1, "contactWritable"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 970
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 971
    invoke-virtual {v1, p7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 974
    return-object v0
.end method

.method public static createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/lang/String;",
            "[J",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 555
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    const-string v1, "createGroup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    const-string v1, "accountType"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    const-string v1, "accountName"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "dataSet"

    iget-object v2, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v1, "groupLabel"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 561
    const-string v1, "rawContactsToAdd"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 565
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 566
    invoke-virtual {v1, p5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 569
    return-object v0
.end method

.method public static createNewRawContactIntent(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/android/contacts/model/account/AccountWithDataSet;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    const-string v1, "newRawContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    if-eqz p2, :cond_0

    .line 238
    const-string v1, "accountName"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "accountType"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v1, "dataSet"

    iget-object v2, p2, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    :cond_0
    const-string v1, "contentValues"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 248
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    return-object v0
.end method

.method private createRawContact(Landroid/content/Intent;)V
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 255
    const-string v14, "accountName"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "accountName":Ljava/lang/String;
    const-string v14, "accountType"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, "accountType":Ljava/lang/String;
    const-string v14, "dataSet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    .local v4, "dataSet":Ljava/lang/String;
    const-string v14, "contentValues"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 259
    .local v12, "valueList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const-string v14, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 261
    .local v3, "callbackIntent":Landroid/content/Intent;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v7, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v14, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_name"

    invoke-virtual {v14, v15, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "data_set"

    invoke-virtual {v14, v15, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 269
    .local v11, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_0

    .line 270
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    .line 271
    .local v13, "values":Landroid/content/ContentValues;
    invoke-virtual {v13}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v14

    sget-object v15, Lcom/android/contacts/ContactSaveService;->ALLOWED_DATA_COLUMNS:Ljava/util/HashSet;

    invoke-interface {v14, v15}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 272
    sget-object v14, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    const-string v15, "raw_contact_id"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 278
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 281
    .local v9, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    const-string v14, "com.android.contacts"

    invoke-virtual {v9, v14, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 286
    .local v10, "results":[Landroid/content/ContentProviderResult;
    const/4 v14, 0x0

    aget-object v14, v10, v14

    iget-object v8, v14, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    .line 287
    .local v8, "rawContactUri":Landroid/net/Uri;
    invoke-static {v9, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 290
    return-void

    .line 282
    .end local v8    # "rawContactUri":Landroid/net/Uri;
    .end local v10    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v5

    .line 283
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/RuntimeException;

    const-string v15, "Failed to store new contact"

    invoke-direct {v14, v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLandroid/net/Uri;)Landroid/content/Intent;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p2, "saveModeExtraKey"    # Ljava/lang/String;
    .param p3, "saveMode"    # I
    .param p4, "isProfile"    # Z
    .param p6, "callbackAction"    # Ljava/lang/String;
    .param p7, "rawContactId"    # J
    .param p9, "updatedPhotoPath"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Landroid/net/Uri;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 304
    .local p5, "callbackActivity":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 305
    .local v8, "bundle":Landroid/os/Bundle;
    invoke-static/range {p7 .. p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 306
    invoke-static/range {v1 .. v8}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method public static createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 323
    const-string v1, "saveContact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 325
    const-string v1, "saveIsProfile"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    if-eqz p7, :cond_0

    .line 327
    const-string v1, "updatedPhotos"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 330
    :cond_0
    if-eqz p5, :cond_1

    .line 334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    invoke-virtual {v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    invoke-virtual {v1, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "callbackIntent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 339
    :cond_1
    return-object v0
.end method

.method public static createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 859
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 860
    const-string v1, "setRingtone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 862
    const-string v1, "customRingtone"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    return-object v0
.end method

.method public static createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 833
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 834
    const-string v1, "sendToVoicemail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 836
    const-string v1, "sendToVoicemailFlag"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 838
    return-object v0
.end method

.method public static createSetStarredIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 807
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 808
    const-string v1, "setStarred"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v1, "contactUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 810
    const-string v1, "starred"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 812
    return-object v0
.end method

.method public static createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 883
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/ContactSaveService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 884
    const-string v1, "setSuperPrimary"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    const-string v1, "dataId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 886
    return-object v0
.end method

.method private deleteContact(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 944
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 945
    .local v2, "contactUri":Landroid/net/Uri;
    if-nez v2, :cond_0

    .line 946
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for deleteContact request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    :goto_0
    return-void

    .line 950
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 952
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 953
    .local v0, "contactId":J
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "CONTACT_CNT_DEL"

    invoke-static {v3, v4, v0, v1}, Lcom/motorola/contacts/util/MEContacts;->onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private deleteGroup(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    .line 661
    const-string v2, "groupId"

    invoke-virtual {p1, v2, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 662
    .local v0, "groupId":J
    cmp-long v2, v0, v5

    if-nez v2, :cond_0

    .line 663
    const-string v2, "ContactSaveService"

    const-string v3, "Invalid arguments for deleteGroup request"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :goto_0
    return-void

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deliverCallback(Landroid/content/Intent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$2;-><init>(Lcom/android/contacts/ContactSaveService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1138
    return-void
.end method

.method private findNonJoinableContactType(Landroid/content/Context;JJ)Lcom/android/contacts/model/account/AccountType;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1155
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1156
    invoke-virtual {v0, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypes(Z)Ljava/util/List;

    move-result-object v0

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType;

    .line 1159
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsJoinable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    :cond_1
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1162
    const-string v3, "account_type"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1163
    const-string v3, " AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    iget-object v3, v0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1165
    const-string v3, "data_set"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :goto_1
    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1167
    :cond_2
    const-string v0, "data_set"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1172
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 1192
    :cond_4
    :goto_2
    return-object v4

    .line 1176
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1177
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1180
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "account_type"

    aput-object v0, v2, v6

    const-string v0, "data_set"

    aput-object v0, v2, v7

    .line 1181
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_4

    .line 1184
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1185
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1187
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 1188
    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v4

    .line 1190
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method

.method private getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 5
    .param p2, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 529
    .local v0, "diffSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 530
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 531
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 534
    aget-object v3, p2, v1

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 537
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :goto_1
    return-wide v3

    .line 529
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 537
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_1
.end method

.method private getRawContactId(Lcom/android/contacts/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J
    .locals 4
    .param p1, "state"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p3, "results"    # [Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[",
            "Landroid/content/ContentProviderResult;",
            ")J"
        }
    .end annotation

    .prologue
    .line 514
    .local p2, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v0

    .line 515
    .local v0, "existingRawContactId":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 519
    .end local v0    # "existingRawContactId":J
    :goto_0
    return-wide v0

    .restart local v0    # "existingRawContactId":J
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v0

    goto :goto_0
.end method

.method private joinContacts(Landroid/content/Intent;)V
    .locals 16

    .prologue
    .line 995
    const-string v1, "contactId1"

    const-wide/16 v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 996
    const-string v1, "contactId2"

    const-wide/16 v5, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 997
    const-string v1, "contactWritable"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    .line 998
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_0

    const-wide/16 v1, -0x1

    cmp-long v1, v5, v1

    if-nez v1, :cond_1

    .line 999
    :cond_0
    const-string v1, "ContactSaveService"

    const-string v2, "Invalid arguments for joinContacts request"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :goto_0
    return-void

    .line 1003
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v4, v5, v6}, Lcom/motorola/contacts/util/MEContacts;->onMergeContact(Landroid/content/Context;JJ)V

    .line 1006
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->findNonJoinableContactType(Landroid/content/Context;JJ)Lcom/android/contacts/model/account/AccountType;

    move-result-object v1

    .line 1012
    if-eqz v1, :cond_2

    .line 1013
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/account/AccountType;->getUserNotifyMsgForNonJoinableContacts(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1020
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/contacts/ContactSaveService$JoinContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v8, "contact_id=? OR contact_id=?"

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v2, 0x1

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const/4 v10, 0x0

    move-object v5, v12

    move-object v6, v1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1026
    const-wide/16 v5, -0x1

    .line 1028
    const/4 v2, -0x1

    .line 1029
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v13, v1, [J

    .line 1030
    const/4 v1, 0x0

    move v7, v1

    :goto_1
    array-length v1, v13

    if-ge v7, v1, :cond_3

    .line 1031
    invoke-interface {v9, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1032
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1033
    aput-wide v14, v13, v7

    .line 1034
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1035
    if-le v1, v2, :cond_c

    .line 1030
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v2, v1

    goto :goto_1

    .line 1043
    :cond_3
    if-eqz v11, :cond_6

    .line 1044
    const/4 v1, 0x0

    :goto_3
    array-length v7, v13

    if-ge v1, v7, :cond_6

    .line 1045
    invoke-interface {v9, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1046
    const/4 v7, 0x1

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_5

    .line 1047
    const/4 v7, 0x3

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1048
    if-ne v7, v2, :cond_5

    const-wide/16 v7, -0x1

    cmp-long v7, v5, v7

    if-eqz v7, :cond_4

    const/4 v7, 0x2

    invoke-interface {v9, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 1051
    :cond_4
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v5

    .line 1044
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move-wide v7, v5

    .line 1057
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1061
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1062
    const/4 v1, 0x0

    move v9, v1

    :goto_4
    array-length v1, v13

    if-ge v9, v1, :cond_9

    .line 1063
    const/4 v1, 0x0

    move v10, v1

    :goto_5
    array-length v1, v13

    if-ge v10, v1, :cond_8

    .line 1064
    if-eq v9, v10, :cond_7

    .line 1065
    aget-wide v3, v13, v9

    aget-wide v5, v13, v10

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->buildJoinContactDiff(Ljava/util/ArrayList;JJ)V

    .line 1063
    :cond_7
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_5

    .line 1057
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1062
    :cond_8
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_4

    .line 1072
    :cond_9
    const-wide/16 v3, -0x1

    cmp-long v1, v7, v3

    if-eqz v1, :cond_a

    .line 1073
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1075
    const-string v3, "name_verified"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1076
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_a
    const/4 v1, 0x0

    .line 1082
    :try_start_1
    const-string v3, "com.android.contacts"

    invoke-virtual {v12, v3, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1083
    const v2, 0x7f0b003c

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1084
    const/4 v1, 0x1

    move v2, v1

    .line 1093
    :goto_6
    const-string v1, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1095
    if-eqz v2, :cond_b

    array-length v2, v13

    if-lez v2, :cond_b

    .line 1097
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    aget-wide v3, v13, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1099
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1101
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1085
    :catch_0
    move-exception v2

    .line 1086
    const-string v3, "ContactSaveService"

    const-string v4, "Failed to apply aggregation exception batch"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1087
    const v2, 0x7f0b0061

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    move v2, v1

    .line 1091
    goto :goto_6

    .line 1088
    :catch_1
    move-exception v2

    .line 1089
    const-string v3, "ContactSaveService"

    const-string v4, "Failed to apply aggregation exception batch"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    const v2, 0x7f0b0061

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/ContactSaveService;->showToast(I)V

    move v2, v1

    goto :goto_6

    :cond_c
    move v1, v2

    goto/16 :goto_2
.end method

.method public static registerListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 3

    .prologue
    .line 166
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/contacts/ContactSaveService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_0
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 171
    return-void
.end method

.method private static removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactsToRemove"    # [J
    .param p2, "groupId"    # J

    .prologue
    .line 789
    if-nez p1, :cond_1

    .line 801
    :cond_0
    return-void

    .line 792
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v3, v0, v1

    .line 796
    .local v3, "rawContactId":J
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "raw_contact_id=? AND mimetype=? AND data1=?"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "vnd.android.cursor.item/group_membership"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 792
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private renameGroup(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    .line 632
    const-string v6, "groupId"

    invoke-virtual {p1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 633
    .local v1, "groupId":J
    const-string v6, "groupLabel"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "label":Ljava/lang/String;
    cmp-long v6, v1, v8

    if-nez v6, :cond_0

    .line 636
    const-string v6, "ContactSaveService"

    const-string v7, "Invalid arguments for renameGroup request"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 640
    :cond_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "title"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v6, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 643
    .local v3, "groupUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v5, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 645
    const-string v6, "callbackIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 646
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 647
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private saveContact(Landroid/content/Intent;)V
    .locals 43
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 343
    const-string v5, "state"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v38

    check-cast v38, Lcom/android/contacts/model/RawContactDeltaList;

    .line 344
    .local v38, "state":Lcom/android/contacts/model/RawContactDeltaList;
    const-string v5, "saveIsProfile"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v27

    .line 345
    .local v27, "isProfile":Z
    const-string v5, "updatedPhotos"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v42

    check-cast v42, Landroid/os/Bundle;

    .line 348
    .local v42, "updatedPhotos":Landroid/os/Bundle;
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    .line 349
    .local v10, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, v38

    invoke-static {v0, v10}, Lcom/android/contacts/model/RawContactModifier;->trimEmpty(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 351
    const/16 v30, 0x0

    .line 353
    .local v30, "lookupUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 354
    .local v4, "resolver":Landroid/content/ContentResolver;
    const/16 v39, 0x0

    .line 357
    .local v39, "succeeded":Z
    const-wide/16 v25, -0x1

    .line 360
    .local v25, "insertedRawContactId":J
    const/16 v40, 0x0

    .local v40, "tries":I
    move/from16 v41, v40

    .line 361
    .end local v40    # "tries":I
    .local v41, "tries":I
    :goto_0
    add-int/lit8 v40, v41, 0x1

    .end local v41    # "tries":I
    .restart local v40    # "tries":I
    const/4 v5, 0x3

    move/from16 v0, v41

    if-ge v0, v5, :cond_1

    .line 364
    :try_start_0
    invoke-virtual/range {v38 .. v38}, Lcom/android/contacts/model/RawContactDeltaList;->buildDiff()Ljava/util/ArrayList;

    move-result-object v20

    .line 372
    .local v20, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v36, 0x0

    .line 373
    .local v36, "results":[Landroid/content/ContentProviderResult;
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 374
    const-string v5, "com.android.contacts"

    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v36

    .line 377
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->getRawContactId(Lcom/android/contacts/model/RawContactDeltaList;Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v33

    .line 378
    .local v33, "rawContactId":J
    const-wide/16 v5, -0x1

    cmp-long v5, v33, v5

    if-nez v5, :cond_4

    .line 379
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID after save"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 411
    .end local v20    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v33    # "rawContactId":J
    .end local v36    # "results":[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v21

    .line 413
    .local v21, "e":Landroid/os/RemoteException;
    const-string v5, "ContactSaveService"

    const-string v6, "Problem persisting user edits"

    move-object/from16 v0, v21

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    .end local v21    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    const/16 v17, 0x0

    .line 456
    .local v17, "contentUri":Landroid/net/Uri;
    if-eqz v30, :cond_2

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v17

    if-eqz v17, :cond_2

    .line 457
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 458
    .local v11, "addContactId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "CONTACT_CNT_ADD"

    invoke-static {v5, v6, v11, v12}, Lcom/motorola/contacts/util/MEContacts;->onContactOperation(Landroid/content/Context;Ljava/lang/String;J)V

    .line 464
    .end local v11    # "addContactId":J
    :cond_2
    if-eqz v42, :cond_e

    .line 465
    invoke-virtual/range {v42 .. v42}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 466
    .local v28, "key":Ljava/lang/String;
    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v32

    check-cast v32, Landroid/net/Uri;

    .line 467
    .local v32, "photoUri":Landroid/net/Uri;
    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v33

    .line 471
    .restart local v33    # "rawContactId":J
    const-wide/16 v5, 0x0

    cmp-long v5, v33, v5

    if-gez v5, :cond_d

    .line 472
    move-wide/from16 v33, v25

    .line 473
    const-wide/16 v5, -0x1

    cmp-long v5, v33, v5

    if-nez v5, :cond_d

    .line 474
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Could not determine RawContact ID for image insertion"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 383
    .end local v17    # "contentUri":Landroid/net/Uri;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "key":Ljava/lang/String;
    .end local v32    # "photoUri":Landroid/net/Uri;
    .restart local v20    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v36    # "results":[Landroid/content/ContentProviderResult;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ContactSaveService;->getInsertedRawContactId(Ljava/util/ArrayList;[Landroid/content/ContentProviderResult;)J

    move-result-wide v25

    .line 384
    if-eqz v27, :cond_8

    .line 388
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "lookup"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 392
    .local v13, "c":Landroid/database/Cursor;
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 393
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 394
    .local v15, "contactId":J
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 395
    .local v29, "lookupKey":Ljava/lang/String;
    move-wide v0, v15

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v30

    .line 398
    .end local v15    # "contactId":J
    .end local v29    # "lookupKey":Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 405
    .end local v13    # "c":Landroid/database/Cursor;
    :goto_3
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Saved contact. New URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/16 v39, 0x1

    goto/16 :goto_1

    .line 398
    .restart local v13    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 416
    .end local v13    # "c":Landroid/database/Cursor;
    .end local v20    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v33    # "rawContactId":J
    .end local v36    # "results":[Landroid/content/ContentProviderResult;
    :catch_1
    move-exception v21

    .line 418
    .local v21, "e":Landroid/content/OperationApplicationException;
    const-string v5, "ContactSaveService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Version consistency failed, re-parenting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v5, "_id IN("

    move-object/from16 v0, v37

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .local v37, "sb":Ljava/lang/StringBuilder;
    const/16 v22, 0x1

    .line 421
    .local v22, "first":Z
    invoke-virtual/range {v38 .. v38}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v18

    .line 422
    .local v18, "count":I
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_4
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 423
    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v33

    .line 424
    .local v33, "rawContactId":Ljava/lang/Long;
    if-eqz v33, :cond_7

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7

    .line 425
    if-nez v22, :cond_6

    .line 426
    const/16 v5, 0x2c

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    :cond_6
    move-object/from16 v0, v37

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    const/16 v22, 0x0

    .line 422
    :cond_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_4

    .line 401
    .end local v18    # "count":I
    .end local v21    # "e":Landroid/content/OperationApplicationException;
    .end local v22    # "first":Z
    .end local v23    # "i":I
    .end local v37    # "sb":Ljava/lang/StringBuilder;
    .restart local v20    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local v33, "rawContactId":J
    .restart local v36    # "results":[Landroid/content/ContentProviderResult;
    :cond_8
    :try_start_4
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v33

    invoke-static {v5, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v35

    .line 403
    .local v35, "rawContactUri":Landroid/net/Uri;
    move-object/from16 v0, v35

    invoke-static {v4, v0}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v30

    goto/16 :goto_3

    .line 432
    .end local v20    # "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v33    # "rawContactId":J
    .end local v35    # "rawContactUri":Landroid/net/Uri;
    .end local v36    # "results":[Landroid/content/ContentProviderResult;
    .restart local v18    # "count":I
    .restart local v21    # "e":Landroid/content/OperationApplicationException;
    .restart local v22    # "first":Z
    .restart local v23    # "i":I
    .restart local v37    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    const-string v5, ")"

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    if-eqz v22, :cond_a

    .line 435
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Version consistency failed for a new contact"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 438
    :cond_a
    if-eqz v27, :cond_b

    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    :goto_5
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v4, v6, v7, v8}, Lcom/android/contacts/model/RawContactDeltaList;->fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v31

    .line 443
    .local v31, "newState":Lcom/android/contacts/model/RawContactDeltaList;
    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->mergeAfter(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v38

    .line 446
    if-eqz v27, :cond_c

    .line 447
    invoke-virtual/range {v38 .. v38}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/contacts/model/RawContactDelta;

    .line 448
    .local v19, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/RawContactDelta;->setProfileQueryUri()V

    goto :goto_6

    .line 438
    .end local v19    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v31    # "newState":Lcom/android/contacts/model/RawContactDeltaList;
    :cond_b
    sget-object v5, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_5

    .restart local v31    # "newState":Lcom/android/contacts/model/RawContactDeltaList;
    :cond_c
    move/from16 v41, v40

    .line 451
    .end local v40    # "tries":I
    .restart local v41    # "tries":I
    goto/16 :goto_0

    .line 479
    .end local v18    # "count":I
    .end local v21    # "e":Landroid/content/OperationApplicationException;
    .end local v22    # "first":Z
    .end local v23    # "i":I
    .end local v31    # "newState":Lcom/android/contacts/model/RawContactDeltaList;
    .end local v37    # "sb":Ljava/lang/StringBuilder;
    .end local v41    # "tries":I
    .restart local v17    # "contentUri":Landroid/net/Uri;
    .restart local v24    # "i$":Ljava/util/Iterator;
    .restart local v28    # "key":Ljava/lang/String;
    .restart local v32    # "photoUri":Landroid/net/Uri;
    .restart local v33    # "rawContactId":J
    .restart local v40    # "tries":I
    :cond_d
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->saveUpdatedPhoto(JLandroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v39, 0x0

    goto/16 :goto_2

    .line 483
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v28    # "key":Ljava/lang/String;
    .end local v32    # "photoUri":Landroid/net/Uri;
    .end local v33    # "rawContactId":J
    :cond_e
    const-string v5, "callbackIntent"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 484
    .local v14, "callbackIntent":Landroid/content/Intent;
    if-eqz v14, :cond_10

    .line 485
    if-eqz v39, :cond_f

    .line 489
    const-string v5, "saveSucceeded"

    const/4 v6, 0x1

    invoke-virtual {v14, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    :cond_f
    move-object/from16 v0, v30

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 492
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    .line 494
    :cond_10
    return-void
.end method

.method private saveUpdatedPhoto(JLandroid/net/Uri;)Z
    .locals 3
    .param p1, "rawContactId"    # J
    .param p3, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 501
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "display_photo"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 505
    .local v0, "outputUri":Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-static {p0, p3, v0, v1}, Lcom/android/contacts/util/ContactPhotoUtils;->savePhotoFromUriToUri(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Z)Z

    move-result v1

    return v1
.end method

.method private setRingtone(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 868
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 869
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "customRingtone"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 871
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRingtone"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :goto_0
    return-void

    .line 874
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 875
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "custom_ringtone"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSendToVoicemail(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 842
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 843
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "sendToVoicemailFlag"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 844
    .local v1, "value":Z
    if-nez v0, :cond_0

    .line 845
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setRedirectToVoicemail"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :goto_0
    return-void

    .line 849
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 850
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "send_to_voicemail"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 851
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStarred(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 816
    const-string v3, "contactUri"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 817
    .local v0, "contactUri":Landroid/net/Uri;
    const-string v3, "starred"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 818
    .local v1, "value":Z
    if-nez v0, :cond_0

    .line 819
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setStarred request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :goto_0
    return-void

    .line 823
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 824
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "starred"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSuperPrimary(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 890
    const-string v3, "dataId"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 891
    .local v0, "dataId":J
    cmp-long v3, v0, v7

    if-nez v3, :cond_0

    .line 892
    const-string v3, "ContactSaveService"

    const-string v4, "Invalid arguments for setSuperPrimary request"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :goto_0
    return-void

    .line 897
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 898
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "is_super_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 899
    const-string v3, "is_primary"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 901
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "message"    # I

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$1;-><init>(Lcom/android/contacts/ContactSaveService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1128
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/android/contacts/ContactSaveService;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/ContactSaveService$3;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/ContactSaveService$3;-><init>(Lcom/android/contacts/ContactSaveService;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1203
    return-void
.end method

.method public static unregisterListener(Lcom/android/contacts/ContactSaveService$Listener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/contacts/ContactSaveService$Listener;

    .prologue
    .line 174
    sget-object v0, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method private updateGroup(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x0

    .line 706
    const-string v9, "groupId"

    invoke-virtual {p1, v9, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 707
    .local v1, "groupId":J
    const-string v9, "groupLabel"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 708
    .local v4, "label":Ljava/lang/String;
    const-string v9, "rawContactsToAdd"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v5

    .line 709
    .local v5, "rawContactsToAdd":[J
    const-string v9, "rawContactsToRemove"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    .line 711
    .local v6, "rawContactsToRemove":[J
    cmp-long v9, v1, v11

    if-nez v9, :cond_0

    .line 712
    const-string v9, "ContactSaveService"

    const-string v10, "Invalid arguments for updateGroup request"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 717
    .local v7, "resolver":Landroid/content/ContentResolver;
    sget-object v9, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 720
    .local v3, "groupUri":Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 721
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v8, "values":Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-virtual {v7, v3, v8, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 727
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-static {v7, v5, v1, v2}, Lcom/android/contacts/ContactSaveService;->addMembersToGroup(Landroid/content/ContentResolver;[JJ)V

    .line 728
    invoke-static {v7, v6, v1, v2}, Lcom/android/contacts/ContactSaveService;->removeMembersFromGroup(Landroid/content/ContentResolver;[JJ)V

    .line 730
    const-string v9, "callbackIntent"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 731
    .local v0, "callbackIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 732
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactSaveService;->deliverCallback(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 4
    .param p1, "callbackIntent"    # Landroid/content/Intent;

    .prologue
    .line 1144
    sget-object v2, Lcom/android/contacts/ContactSaveService;->sListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactSaveService$Listener;

    .line 1145
    .local v1, "listener":Lcom/android/contacts/ContactSaveService$Listener;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object v2, v1

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    invoke-interface {v1, p1}, Lcom/android/contacts/ContactSaveService$Listener;->onServiceCompleted(Landroid/content/Intent;)V

    .line 1151
    .end local v1    # "listener":Lcom/android/contacts/ContactSaveService$Listener;
    :cond_1
    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 184
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "service":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ContactSaveService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 191
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    const-string v1, "newRawContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createRawContact(Landroid/content/Intent;)V

    .line 194
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v1, "saveContact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->saveContact(Landroid/content/Intent;)V

    .line 197
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 198
    :cond_2
    const-string v1, "createGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->createGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    :cond_3
    const-string v1, "renameGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->renameGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 202
    :cond_4
    const-string v1, "deleteGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 203
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 204
    :cond_5
    const-string v1, "updateGroup"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 205
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->updateGroup(Landroid/content/Intent;)V

    goto :goto_0

    .line 206
    :cond_6
    const-string v1, "setStarred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 207
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setStarred(Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :cond_7
    const-string v1, "setSuperPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 209
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSuperPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 210
    :cond_8
    const-string v1, "clearPrimary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 211
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->clearPrimary(Landroid/content/Intent;)V

    goto :goto_0

    .line 212
    :cond_9
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 213
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->deleteContact(Landroid/content/Intent;)V

    .line 214
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 215
    :cond_a
    const-string v1, "joinContacts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 216
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->joinContacts(Landroid/content/Intent;)V

    .line 217
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 218
    :cond_b
    const-string v1, "sendToVoicemail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 219
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setSendToVoicemail(Landroid/content/Intent;)V

    .line 220
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 221
    :cond_c
    const-string v1, "setRingtone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    invoke-direct {p0, p1}, Lcom/android/contacts/ContactSaveService;->setRingtone(Landroid/content/Intent;)V

    .line 223
    invoke-static {p0}, Lcom/android/contacts/util/CallerInfoCacheUtils;->sendUpdateCallerInfoCacheIntent(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
