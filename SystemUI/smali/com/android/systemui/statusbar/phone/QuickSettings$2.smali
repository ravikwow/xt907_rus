.class Lcom/android/systemui/statusbar/phone/QuickSettings$2;
.super Landroid/os/AsyncTask;
.source "QuickSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->queryForUserInformation()V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$userId:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    const v1, 0x7f020032

    const/4 v3, 0x0

    const/4 v11, 0x1

    .line 301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    .line 305
    .local v10, "um":Landroid/os/UserManager;
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$userName:Ljava/lang/String;

    .line 306
    .local v8, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 307
    .local v6, "avatar":Landroid/graphics/drawable/Drawable;
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$userId:I

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 308
    .local v9, "rawAvatar":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_2

    .line 309
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    .end local v6    # "avatar":Landroid/graphics/drawable/Drawable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v6, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 317
    .restart local v6    # "avatar":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v11, :cond_1

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "display_name"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 326
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 328
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 350
    :cond_0
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 354
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iput-boolean v11, v0, Lcom/android/systemui/statusbar/phone/QuickSettings;->mUseDefaultAvatar:Z

    goto :goto_0

    .line 336
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->val$userId:I

    if-nez v0, :cond_0

    .line 338
    const/4 v8, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$200(Lcom/android/systemui/statusbar/phone/QuickSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 350
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    # getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mModel:Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$100(Lcom/android/systemui/statusbar/phone/QuickSettings;)Lcom/android/systemui/statusbar/phone/QuickSettingsModel;

    move-result-object v2

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel;->setUserTileInfo(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mUserInfoTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$302(Lcom/android/systemui/statusbar/phone/QuickSettings;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 362
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 298
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/QuickSettings$2;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
