.class Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;
.super Landroid/os/HandlerThread;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private mBuffer:[B

.field private mLoaderThreadHandler:Landroid/os/Handler;

.field private final mPhotoIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoIdsAsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreloadPhotoIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadStatus:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field final synthetic this$0:Lcom/android/contacts/ContactPhotoManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V
    .locals 1
    .param p2, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    .line 910
    const-string v0, "ContactPhotoLoader"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 895
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    .line 896
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    .line 897
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    .line 898
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    .line 907
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 911
    iput-object p2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    .line 912
    return-void
.end method

.method private loadPhotosInBackground()V
    .locals 4

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$300(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1052
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadUriBasedPhotos()V

    .line 1053
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 1054
    return-void
.end method

.method private loadThumbnails(Z)V
    .locals 12
    .param p1, "preloading"    # Z

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    :goto_0
    return-void

    .line 1064
    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1066
    .local v10, "id":Ljava/lang/Long;
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1068
    .end local v10    # "id":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1069
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1073
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1074
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "_id IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 1076
    if-eqz v8, :cond_3

    .line 1077
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1075
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1081
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    const/4 v7, 0x0

    .line 1086
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$400()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$500()[Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1092
    if-eqz v7, :cond_6

    .line 1093
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1094
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 1095
    .restart local v10    # "id":Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 1096
    .local v6, "bytes":[B
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v6, p1, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1101
    .end local v6    # "bytes":[B
    .end local v10    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    .line 1102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 1101
    :cond_6
    if-eqz v7, :cond_7

    .line 1102
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1107
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1108
    .restart local v10    # "id":Ljava/lang/Long;
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1109
    const/4 v11, 0x0

    .line 1111
    .local v11, "profileCursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$400()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1114
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1115
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    const/4 v3, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1122
    :goto_5
    if-eqz v11, :cond_8

    .line 1123
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 1119
    :cond_9
    :try_start_2
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v1, p1, v2}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    .line 1122
    :catchall_1
    move-exception v0

    if-eqz v11, :cond_a

    .line 1123
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 1128
    .end local v11    # "profileCursor":Landroid/database/Cursor;
    :cond_b
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v0, v10, v1, p1, v2}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_4

    .line 1132
    .end local v10    # "id":Ljava/lang/Long;
    :cond_c
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private loadUriBasedPhotos()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 1140
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoUris:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/ContactPhotoManagerImpl$Request;

    .line 1141
    .local v6, "uriRequest":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    invoke-virtual {v6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getUri()Landroid/net/Uri;

    move-result-object v5

    .line 1142
    .local v5, "uri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    if-nez v7, :cond_0

    .line 1143
    const/16 v7, 0x4000

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    .line 1147
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1148
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 1149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_1
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    invoke-virtual {v3, v7}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "size":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 1153
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1156
    .end local v4    # "size":I
    :catchall_0
    move-exception v7

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1165
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1166
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "ContactPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1167
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v8

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v7, v5, v12, v11, v8}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    goto :goto_0

    .line 1156
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "size":I
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1158
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v10

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v7, v5, v8, v9, v10}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V

    .line 1160
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$700(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1162
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "size":I
    :cond_2
    const-string v7, "ContactPhotoManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot load photo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v7, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/android/contacts/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v10

    # invokes: Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V
    invoke-static {v7, v5, v8, v9, v10}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$600(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1170
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "uriRequest":Lcom/android/contacts/ContactPhotoManagerImpl$Request;
    :cond_3
    return-void
.end method

.method private preloadPhotosInBackground()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 976
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-ne v3, v5, :cond_0

    .line 1020
    :goto_0
    return-void

    .line 980
    :cond_0
    iget v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    if-nez v3, :cond_2

    .line 981
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->queryPhotosForPreload()V

    .line 982
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 983
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 987
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto :goto_0

    .line 985
    :cond_1
    iput v6, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_1

    .line 991
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {v3}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/LruCache;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I
    invoke-static {v4}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$200(Lcom/android/contacts/ContactPhotoManagerImpl;)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 992
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    goto :goto_0

    .line 996
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 997
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "count":I
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1001
    .local v2, "preloadSize":I
    :goto_2
    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x19

    if-ge v3, v4, :cond_4

    .line 1002
    add-int/lit8 v2, v2, -0x1

    .line 1003
    add-int/lit8 v0, v0, 0x1

    .line 1004
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1005
    .local v1, "photoId":Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIds:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1006
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPhotoIdsAsStrings:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1007
    iget-object v3, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1010
    .end local v1    # "photoId":Ljava/lang/Long;
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadThumbnails(Z)V

    .line 1012
    if-nez v2, :cond_5

    .line 1013
    iput v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    .line 1016
    :cond_5
    const-string v3, "ContactPhotoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preloaded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " photos.  Cached bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->this$0:Lcom/android/contacts/ContactPhotoManagerImpl;

    # getter for: Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;
    invoke-static {v5}, Lcom/android/contacts/ContactPhotoManagerImpl;->access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/LruCache;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    goto/16 :goto_0
.end method

.method private queryPhotosForPreload()V
    .locals 7

    .prologue
    .line 1023
    const/4 v6, 0x0

    .line 1025
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "directory"

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1030
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_id"

    aput-object v4, v2, v3

    const-string v3, "photo_id NOT NULL AND photo_id!=0"

    const/4 v4, 0x0

    const-string v5, "starred DESC, last_time_contacted DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1035
    if-eqz v6, :cond_1

    .line 1036
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1039
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadPhotoIds:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1043
    .end local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 1044
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1043
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_1
    if-eqz v6, :cond_2

    .line 1044
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1047
    :cond_2
    return-void
.end method


# virtual methods
.method public ensureHandler()V
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    .line 918
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 958
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 966
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 960
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->preloadPhotosInBackground()V

    goto :goto_0

    .line 963
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->loadPhotosInBackground()V

    goto :goto_0

    .line 958
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestLoading()V
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 948
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 949
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 950
    return-void
.end method

.method public requestPreloading()V
    .locals 4

    .prologue
    .line 928
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mPreloadStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->ensureHandler()V

    .line 933
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->mLoaderThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
