.class Lcom/motorola/messaging/activity/SlideshowEditActivity$3;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowEditActivity;)V
    .locals 0

    .prologue
    .line 997
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$3;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 1000
    if-nez p2, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowEditActivity$3;->this$0:Lcom/motorola/messaging/activity/SlideshowEditActivity;

    const/4 v1, -0x1

    # setter for: Lcom/motorola/messaging/activity/SlideshowEditActivity;->mSlidePosition:I
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowEditActivity;->access$402(Lcom/motorola/messaging/activity/SlideshowEditActivity;I)I

    .line 1002
    :cond_0
    return-void
.end method
