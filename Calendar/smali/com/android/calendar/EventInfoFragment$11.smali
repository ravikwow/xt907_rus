.class Lcom/android/calendar/EventInfoFragment$11;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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
    .line 1195
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$11;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "arg0"    # Landroid/widget/PopupMenu;

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$11;->this$0:Lcom/android/calendar/EventInfoFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/EventInfoFragment;->mMoreActionPopupVisible:Z
    invoke-static {v0, v1}, Lcom/android/calendar/EventInfoFragment;->access$4702(Lcom/android/calendar/EventInfoFragment;Z)Z

    .line 1199
    return-void
.end method
