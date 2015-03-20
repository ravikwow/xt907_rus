.class final Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;
.super Lcom/android/contacts/detail/PhotoSelectionHandler;
.source "PhotoSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PhotoSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PhotoHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

.field final synthetic this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/model/EntityDeltaList;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "photoView"    # Landroid/view/View;
    .param p4, "photoMode"    # I
    .param p5, "state"    # Lcom/android/contacts/model/EntityDeltaList;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    .line 519
    # getter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mIsDirectoryContact:Z
    invoke-static {p1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1200(Lcom/android/contacts/activities/PhotoSelectionActivity;)Z

    move-result v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/detail/PhotoSelectionHandler;-><init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/EntityDeltaList;)V

    .line 521
    new-instance v0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler$PhotoListener;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->mListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    .line 522
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/activities/PhotoSelectionActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p6, "x5"    # Lcom/android/contacts/activities/PhotoSelectionActivity$1;

    .prologue
    .line 514
    invoke-direct/range {p0 .. p5}, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;-><init>(Lcom/android/contacts/activities/PhotoSelectionActivity;Landroid/content/Context;Landroid/view/View;ILcom/android/contacts/model/EntityDeltaList;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->mListener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    return-object v0
.end method

.method public startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "photoFile"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    const/4 v1, 0x1

    # setter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mSubActivityInProgress:Z
    invoke-static {v0, v1}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1402(Lcom/android/contacts/activities/PhotoSelectionActivity;Z)Z

    .line 532
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    # setter for: Lcom/android/contacts/activities/PhotoSelectionActivity;->mCurrentPhotoFile:Ljava/lang/String;
    invoke-static {v0, p3}, Lcom/android/contacts/activities/PhotoSelectionActivity;->access$1502(Lcom/android/contacts/activities/PhotoSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 533
    iget-object v0, p0, Lcom/android/contacts/activities/PhotoSelectionActivity$PhotoHandler;->this$0:Lcom/android/contacts/activities/PhotoSelectionActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 534
    return-void
.end method
