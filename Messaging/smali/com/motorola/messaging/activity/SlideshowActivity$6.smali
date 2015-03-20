.class Lcom/motorola/messaging/activity/SlideshowActivity$6;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Lcom/motorola/messaging/activity/SlideshowActivity$SmilPlayerController$PlayerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/activity/SlideshowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/SlideshowActivity;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/motorola/messaging/activity/SlideshowActivity$6;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$6;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    const/4 v1, 0x1

    # setter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$502(Lcom/motorola/messaging/activity/SlideshowActivity;Z)Z

    .line 481
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/motorola/messaging/activity/SlideshowActivity$6;->this$0:Lcom/motorola/messaging/activity/SlideshowActivity;

    const/4 v1, 0x0

    # setter for: Lcom/motorola/messaging/activity/SlideshowActivity;->mUserPaused:Z
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/SlideshowActivity;->access$502(Lcom/motorola/messaging/activity/SlideshowActivity;Z)Z

    .line 485
    return-void
.end method
