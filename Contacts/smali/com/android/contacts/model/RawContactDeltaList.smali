.class public Lcom/android/contacts/model/RawContactDeltaList;
.super Ljava/util/ArrayList;
.source "RawContactDeltaList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/contacts/model/RawContactDelta;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/model/RawContactDeltaList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final VERBOSE_LOGGING:Z


# instance fields
.field private mJoinWithRawContactIds:[J

.field private mSplitRawContacts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    .line 461
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList$1;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList$1;-><init>()V

    sput-object v0, Lcom/android/contacts/model/RawContactDeltaList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/model/RawContactDeltaList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/model/RawContactDeltaList$1;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    return-void
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;II[I)V
    .locals 9
    .param p2, "index1"    # I
    .param p3, "index2"    # I
    .param p4, "backRefs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;II[I)V"
        }
    .end annotation

    .prologue
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v7, 0x0

    .line 267
    sget-object v5, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 269
    .local v2, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "type"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 271
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 272
    .local v3, "rawContactId1":Ljava/lang/Long;
    aget v0, p4, p2

    .line 273
    .local v0, "backRef1":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    .line 274
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 281
    :goto_0
    invoke-virtual {p0, p3}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 282
    .local v4, "rawContactId2":Ljava/lang/Long;
    aget v1, p4, p3

    .line 283
    .local v1, "backRef2":I
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    .line 284
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 291
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v1    # "backRef2":I
    .end local v4    # "rawContactId2":Ljava/lang/Long;
    :cond_0
    return-void

    .line 275
    :cond_1
    if-ltz v0, :cond_0

    .line 276
    const-string v5, "raw_contact_id1"

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 285
    .restart local v1    # "backRef2":I
    .restart local v4    # "rawContactId2":Ljava/lang/Long;
    :cond_2
    if-ltz v1, :cond_0

    .line 286
    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1
.end method

.method private buildSplitContactDiff(Ljava/util/ArrayList;[I)V
    .locals 3
    .param p2, "backRefs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v0

    .line 253
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 254
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 255
    if-eq v1, v2, :cond_0

    .line 256
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/contacts/model/RawContactDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;II[I)V

    .line 254
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 253
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method private static diffToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, "[\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentProviderOperation;

    .line 228
    .local v1, "op":Landroid/content/ContentProviderOperation;
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v3, ",\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 231
    .end local v1    # "op":Landroid/content/ContentProviderOperation;
    :cond_0
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;)",
            "Lcom/android/contacts/model/RawContactDeltaList;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v3, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v3}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 96
    .local v3, "state":Lcom/android/contacts/model/RawContactDeltaList;
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 98
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "nextObject":Ljava/lang/Object;
    instance-of v4, v1, Landroid/content/Entity;

    if-eqz v4, :cond_0

    check-cast v1, Landroid/content/Entity;

    .end local v1    # "nextObject":Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/contacts/model/RawContact;->createFrom(Landroid/content/Entity;)Lcom/android/contacts/model/RawContact;

    move-result-object v0

    .line 102
    .local v0, "before":Lcom/android/contacts/model/RawContact;
    :goto_1
    invoke-static {v0}, Lcom/android/contacts/model/RawContactDelta;->fromBefore(Lcom/android/contacts/model/RawContact;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v2

    .line 103
    .local v2, "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v3, v2}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    .end local v0    # "before":Lcom/android/contacts/model/RawContact;
    .end local v2    # "rawContactDelta":Lcom/android/contacts/model/RawContactDelta;
    .restart local v1    # "nextObject":Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/android/contacts/model/RawContact;

    move-object v0, v1

    goto :goto_1

    .line 105
    .end local v1    # "nextObject":Ljava/lang/Object;
    :cond_1
    return-object v3
.end method

.method public static fromQuery(Landroid/net/Uri;Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 7
    .param p0, "entityUri"    # Landroid/net/Uri;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v6

    .line 82
    .local v6, "iterator":Landroid/content/EntityIterator;
    :try_start_0
    invoke-static {v6}, Lcom/android/contacts/model/RawContactDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/RawContactDeltaList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/content/EntityIterator;->close()V

    throw v0
.end method

.method public static fromSingle(Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 1
    .param p0, "delta"    # Lcom/android/contacts/model/RawContactDelta;

    .prologue
    .line 67
    new-instance v0, Lcom/android/contacts/model/RawContactDeltaList;

    invoke-direct {v0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 68
    .local v0, "state":Lcom/android/contacts/model/RawContactDeltaList;
    invoke-virtual {v0, p0}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 69
    return-object v0
.end method

.method public static mergeAfter(Lcom/android/contacts/model/RawContactDeltaList;Lcom/android/contacts/model/RawContactDeltaList;)Lcom/android/contacts/model/RawContactDeltaList;
    .locals 6
    .param p0, "local"    # Lcom/android/contacts/model/RawContactDeltaList;
    .param p1, "remote"    # Lcom/android/contacts/model/RawContactDeltaList;

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance p0, Lcom/android/contacts/model/RawContactDeltaList;

    .end local p0    # "local":Lcom/android/contacts/model/RawContactDeltaList;
    invoke-direct {p0}, Lcom/android/contacts/model/RawContactDeltaList;-><init>()V

    .line 118
    .restart local p0    # "local":Lcom/android/contacts/model/RawContactDeltaList;
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContactDelta;

    .line 119
    .local v4, "remoteEntity":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v3

    .line 122
    .local v3, "rawContactId":Ljava/lang/Long;
    invoke-virtual {p0, v3}, Lcom/android/contacts/model/RawContactDeltaList;->getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v1

    .line 123
    .local v1, "localEntity":Lcom/android/contacts/model/RawContactDelta;
    invoke-static {v1, v4}, Lcom/android/contacts/model/RawContactDelta;->mergeAfter(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v2

    .line 125
    .local v2, "merged":Lcom/android/contacts/model/RawContactDelta;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p0, v2}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v1    # "localEntity":Lcom/android/contacts/model/RawContactDelta;
    .end local v2    # "merged":Lcom/android/contacts/model/RawContactDelta;
    .end local v3    # "rawContactId":Ljava/lang/Long;
    .end local v4    # "remoteEntity":Lcom/android/contacts/model/RawContactDelta;
    :cond_2
    return-object p0
.end method


# virtual methods
.method protected beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    .prologue
    .line 240
    sget-object v1, Landroid/provider/ContactsContract$AggregationExceptions;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 242
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 243
    return-object v0
.end method

.method public buildDiff()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    sget-boolean v19, Lcom/android/contacts/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v19, :cond_0

    .line 142
    sget-object v19, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "buildDiff: list="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 146
    .local v7, "diff":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->findRawContactId()J

    move-result-wide v15

    .line 147
    .local v15, "rawContactId":J
    const/4 v9, -0x1

    .line 150
    .local v9, "firstInsertRow":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    .line 151
    .local v6, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/RawContactDelta;->buildAssert(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 154
    .end local v6    # "delta":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 155
    .local v3, "assertMark":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v4, v0, [I

    .line 157
    .local v4, "backRefs":[I
    const/16 v17, 0x0

    .line 160
    .local v17, "rawContactIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    .line 161
    .restart local v6    # "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 162
    .local v8, "firstBatch":I
    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->isContactInsert()Z

    move-result v12

    .line 163
    .local v12, "isInsert":Z
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "rawContactIndex":I
    .local v18, "rawContactIndex":I
    if-eqz v12, :cond_2

    move/from16 v19, v8

    :goto_2
    aput v19, v4, v17

    .line 165
    invoke-virtual {v6, v7}, Lcom/android/contacts/model/RawContactDelta;->buildDiff(Ljava/util/ArrayList;)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .local v2, "arr$":[J
    array-length v14, v2

    .local v14, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_3
    if-ge v11, v14, :cond_4

    aget-wide v19, v2, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 171
    .local v13, "joinedRawContactId":Ljava/lang/Long;
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 172
    .local v5, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 173
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_3

    .line 174
    const-string v19, "raw_contact_id2"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 179
    :goto_4
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 163
    .end local v2    # "arr$":[J
    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "i$":I
    .end local v13    # "joinedRawContactId":Ljava/lang/Long;
    .end local v14    # "len$":I
    :cond_2
    const/16 v19, -0x1

    goto :goto_2

    .line 176
    .restart local v2    # "arr$":[J
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .restart local v11    # "i$":I
    .restart local v13    # "joinedRawContactId":Ljava/lang/Long;
    .restart local v14    # "len$":I
    :cond_3
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_4

    .line 184
    .end local v2    # "arr$":[J
    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v11    # "i$":I
    .end local v13    # "joinedRawContactId":Ljava/lang/Long;
    .end local v14    # "len$":I
    :cond_4
    if-nez v12, :cond_5

    move/from16 v17, v18

    .end local v18    # "rawContactIndex":I
    .restart local v17    # "rawContactIndex":I
    goto :goto_1

    .line 187
    .end local v17    # "rawContactIndex":I
    .restart local v18    # "rawContactIndex":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move/from16 v17, v18

    .end local v18    # "rawContactIndex":I
    .restart local v17    # "rawContactIndex":I
    goto :goto_1

    .line 189
    .end local v17    # "rawContactIndex":I
    .restart local v18    # "rawContactIndex":I
    :cond_6
    const-wide/16 v19, -0x1

    cmp-long v19, v15, v19

    if-eqz v19, :cond_7

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 192
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 193
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 194
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    :goto_5
    move/from16 v17, v18

    .line 208
    .end local v18    # "rawContactIndex":I
    .restart local v17    # "rawContactIndex":I
    goto/16 :goto_1

    .line 196
    .end local v17    # "rawContactIndex":I
    .restart local v18    # "rawContactIndex":I
    :cond_7
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v9, v0, :cond_8

    .line 198
    move v9, v8

    goto :goto_5

    .line 202
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/RawContactDeltaList;->beginKeepTogether()Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    .line 203
    .restart local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v19, "raw_contact_id1"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 205
    const-string v19, "raw_contact_id2"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 206
    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 210
    .end local v5    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v6    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v8    # "firstBatch":I
    .end local v12    # "isInsert":Z
    .end local v18    # "rawContactIndex":I
    .restart local v17    # "rawContactIndex":I
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 211
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/contacts/model/RawContactDeltaList;->buildSplitContactDiff(Ljava/util/ArrayList;[I)V

    .line 215
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v3, :cond_b

    .line 216
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 218
    :cond_b
    sget-boolean v19, Lcom/android/contacts/model/RawContactDeltaList;->VERBOSE_LOGGING:Z

    if-eqz v19, :cond_c

    .line 219
    sget-object v19, Lcom/android/contacts/model/RawContactDeltaList;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "buildDiff: ops="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v7}, Lcom/android/contacts/model/RawContactDeltaList;->diffToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_c
    return-object v7
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 435
    const/4 v0, 0x0

    return v0
.end method

.method public findRawContactId()J
    .locals 7

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 301
    .local v0, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 302
    .local v2, "rawContactId":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 303
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 306
    .end local v0    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v2    # "rawContactId":Ljava/lang/Long;
    :goto_0
    return-wide v3

    :cond_1
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public getByRawContactId(Ljava/lang/Long;)Lcom/android/contacts/model/RawContactDelta;
    .locals 2
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfRawContactId(Ljava/lang/Long;)I

    move-result v0

    .line 328
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    goto :goto_0
.end method

.method public getFirstPhotoWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfFirstPhotoWritableRawContact(Landroid/content/Context;)I

    move-result v0

    .line 365
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    goto :goto_0
.end method

.method public getFirstWritableRawContact(Landroid/content/Context;)Lcom/android/contacts/model/RawContactDelta;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    .line 385
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    goto :goto_0
.end method

.method public getRawContactId(I)Ljava/lang/Long;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 313
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/RawContactDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 315
    .local v0, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v1

    .line 316
    .local v1, "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 320
    .end local v0    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v1    # "values":Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public indexOfFirstPhotoWritableRawContact(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 350
    .local v2, "entityIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 352
    .local v1, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1, p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    .line 353
    .local v0, "account":Lcom/android/contacts/model/account/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v4}, Lcom/android/contacts/model/account/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 359
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountType;
    .end local v1    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v2    # "entityIndex":I
    :goto_1
    return v2

    .line 357
    .restart local v0    # "account":Lcom/android/contacts/model/account/AccountType;
    .restart local v1    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .restart local v2    # "entityIndex":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 358
    goto :goto_0

    .line 359
    .end local v0    # "account":Lcom/android/contacts/model/account/AccountType;
    .end local v1    # "delta":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public indexOfFirstWritableRawContact(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "entityIndex":I
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 376
    .local v0, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v0, p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactAccountType(Landroid/content/Context;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    .end local v0    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .end local v1    # "entityIndex":I
    :goto_1
    return v1

    .line 377
    .restart local v0    # "delta":Lcom/android/contacts/model/RawContactDelta;
    .restart local v1    # "entityIndex":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    .end local v0    # "delta":Lcom/android/contacts/model/RawContactDelta;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public indexOfRawContactId(Ljava/lang/Long;)I
    .locals 5
    .param p1, "rawContactId"    # Ljava/lang/Long;

    .prologue
    const/4 v3, -0x1

    .line 335
    if-nez p1, :cond_1

    move v1, v3

    .line 343
    :cond_0
    :goto_0
    return v1

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v2

    .line 337
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/RawContactDeltaList;->getRawContactId(I)Ljava/lang/Long;

    move-result-object v0

    .line 339
    .local v0, "currentId":Ljava/lang/Long;
    invoke-virtual {p1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "currentId":Ljava/lang/Long;
    :cond_2
    move v1, v3

    .line 343
    goto :goto_0
.end method

.method public isMarkedForJoining()Z
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMarkedForSplitting()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    return v0
.end method

.method public markRawContactsForSplitting()V
    .locals 1

    .prologue
    .line 416
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    .line 417
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 453
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 455
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/RawContactDeltaList;->add(Ljava/lang/Object;)Z

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    .line 459
    return-void

    .line 458
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setJoinWithRawContacts([J)V
    .locals 0
    .param p1, "rawContactIds"    # [J

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    .line 425
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 479
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, "Split="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-boolean v1, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, ", Join=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, "], Values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    invoke-super {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->size()I

    move-result v2

    .line 442
    .local v2, "size":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    invoke-virtual {p0}, Lcom/android/contacts/model/RawContactDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 444
    .local v0, "delta":Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 446
    .end local v0    # "delta":Lcom/android/contacts/model/RawContactDelta;
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/model/RawContactDeltaList;->mJoinWithRawContactIds:[J

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 447
    iget-boolean v3, p0, Lcom/android/contacts/model/RawContactDeltaList;->mSplitRawContacts:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    return-void

    .line 447
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
