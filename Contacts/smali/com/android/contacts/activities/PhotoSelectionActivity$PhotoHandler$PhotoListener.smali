.class final Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;
.super Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoListener"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)V
    .locals 0

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .param p2, "x1"    # Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPhotoSelected(Landroid/graphics/Bitmap;)V
    .locals 11
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getDeltaForAttachingPhotoToContact()Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v1

    .line 540
    .local v1, "delta":Lcom/android/contacts/model/EntityDeltaList;
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    # invokes: Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityId()J
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->access$1600(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)J

    move-result-wide v7

    .line 541
    .local v7, "rawContactId":J
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    iget-object v2, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v2, v2, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 543
    .local v9, "croppedPath":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    # getter for: Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->access$1700(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v4, v4, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsProfile:Z
    invoke-static {v4}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1800(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v4

    move-object v6, v5

    invoke-static/range {v0 .. v9}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 545
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0, v10}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 546
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    .line 547
    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    .line 559
    :cond_0
    return-void
.end method
