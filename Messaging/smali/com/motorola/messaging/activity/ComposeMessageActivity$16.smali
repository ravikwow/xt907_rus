.class Lcom/motorola/messaging/activity/ComposeMessageActivity$16;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->showWarningBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2183
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$16;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$16;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 2187
    return-void
.end method
