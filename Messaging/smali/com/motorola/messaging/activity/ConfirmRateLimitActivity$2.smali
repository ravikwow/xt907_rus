.class Lcom/motorola/messaging/activity/ConfirmRateLimitActivity$2;
.super Ljava/lang/Object;
.source "ConfirmRateLimitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity$2;->this$0:Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity$2;->this$0:Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;

    const/4 v1, 0x0

    # invokes: Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->doAnswer(Z)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;->access$000(Lcom/motorola/messaging/activity/ConfirmRateLimitActivity;Z)V

    .line 63
    return-void
.end method
