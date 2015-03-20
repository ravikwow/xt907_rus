.class Lcom/android/calendar/EventInfoFragment$10;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onMoreActionClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000c2

    if-ne v0, v1, :cond_1

    .line 1188
    new-instance v0, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoFragment$ForwardIcsTask;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1192
    :cond_0
    :goto_0
    return v4

    .line 1189
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1000c3

    if-ne v0, v1, :cond_0

    .line 1190
    new-instance v0, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/EventInfoFragment$ShareIcsTask;-><init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Context;)V

    new-array v1, v3, [Ljava/lang/Long;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$10;->this$0:Lcom/android/calendar/EventInfoFragment;

    # getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
