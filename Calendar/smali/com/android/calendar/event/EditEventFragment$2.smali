.class Lcom/android/calendar/event/EditEventFragment$2;
.super Ljava/lang/Object;
.source "EditEventFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/EditEventFragment;->displayEditWhichDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/EditEventFragment;

.field final synthetic val$notSynced:Z


# direct methods
.method constructor <init>(Lcom/android/calendar/event/EditEventFragment;Z)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput-boolean p2, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 617
    if-nez p2, :cond_3

    .line 620
    iget-object v2, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-boolean v3, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    if-eqz v3, :cond_1

    :goto_0
    iput v0, v2, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    .line 622
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    if-ne v0, v1, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v1, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-boolean v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v1, Lcom/android/calendar/CalendarEventModel;->mOriginalSyncId:Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v1, v1, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-wide v1, v1, Lcom/android/calendar/CalendarEventModel;->mId:J

    iput-wide v1, v0, Lcom/android/calendar/CalendarEventModel;->mOriginalId:J

    .line 633
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mView:Lcom/android/calendar/event/EditEventView;

    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget v1, v1, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/event/EditEventView;->setModification(I)V

    .line 634
    return-void

    :cond_1
    move v0, v1

    .line 620
    goto :goto_0

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-object v0, v0, Lcom/android/calendar/event/EditEventFragment;->mModel:Lcom/android/calendar/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/CalendarEventModel;->mSyncId:Ljava/lang/String;

    goto :goto_1

    .line 626
    :cond_3
    if-ne p2, v1, :cond_5

    .line 627
    iget-object v1, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iget-boolean v3, p0, Lcom/android/calendar/event/EditEventFragment$2;->val$notSynced:Z

    if-eqz v3, :cond_4

    move v0, v2

    :cond_4
    iput v0, v1, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_2

    .line 629
    :cond_5
    if-ne p2, v2, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/calendar/event/EditEventFragment$2;->this$0:Lcom/android/calendar/event/EditEventFragment;

    iput v2, v0, Lcom/android/calendar/event/EditEventFragment;->mModification:I

    goto :goto_2
.end method
