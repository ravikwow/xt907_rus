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
    .line 540
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
    .param p2, "x1"    # Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    .prologue
    .line 540
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)V

    return-void
.end method


# virtual methods
.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1500(Lcom/android/contacts/activities/PhotoSelectionActivity;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public onPhotoSelected(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 543
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->getDeltaForAttachingPhotoToContact()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v1

    .line 544
    .local v1, "delta":Lcom/android/contacts/model/RawContactDeltaList;
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    # invokes: Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->getWritableEntityId()J
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->access$1600(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)J

    move-result-wide v7

    .line 546
    .local v7, "rawContactId":J
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

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/RawContactDeltaList;Ljava/lang/String;IZLjava/lang/Class;Ljava/lang/String;JLandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v10

    .line 548
    .local v10, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0, v10}, Lcom/android/contacts/activities/PhotoSelectionActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 549
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    .line 550
    return-void
.end method

.method public onPhotoSelectionDismissed()V
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1400(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;->this$1:Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    iget-object v0, v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0}, Lcom/android/contacts/activities/PhotoSelectionActivity;->finish()V

    .line 562
    :cond_0
    return-void
.end method
