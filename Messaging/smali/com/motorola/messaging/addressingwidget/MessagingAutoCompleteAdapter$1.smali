.class Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;
.super Landroid/os/AsyncTask;
.source "MessagingAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->fetchPhotoAsync(Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Landroid/net/Uri;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

.field final synthetic val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

.field final synthetic val$item:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

.field final synthetic val$photoThumbnailUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;Landroid/net/Uri;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    iput-object p2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$item:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    iput-object p4, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPendingPhotoRequest:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$000(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, "bmp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    # getter for: Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$100(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    sget-object v2, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 183
    .local v8, "photoCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 185
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 187
    .local v7, "photoBytes":[B
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$item:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    invoke-virtual {v0, v7}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->setPhotoBytes([B)V

    .line 188
    const/4 v0, 0x0

    array-length v1, v7

    invoke-static {v7, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 190
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$300(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;

    invoke-direct {v1, p0, v7}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1$1;-><init>(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    .end local v7    # "photoBytes":[B
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1
    return-object v6

    .line 198
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->mPendingPhotoRequest:Ljava/util/List;
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$000(Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    sget-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    iget-object v0, v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    iget-object v1, v1, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    iget-object v0, v0, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    :goto_0
    sget-boolean v0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->LOCAL_LOG:Z

    if-eqz v0, :cond_1

    .line 221
    # getter for: Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set thumb for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$item:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;

    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ItemParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    iget-object v2, v2, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$photoThumbnailUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->val$holder:Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;

    iget-object v2, v2, Lcom/motorola/messaging/addressingwidget/MessagingDropDownAdapter$ViewHolder;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    return-void

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->this$0:Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/addressingwidget/MessagingAutoCompleteAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
