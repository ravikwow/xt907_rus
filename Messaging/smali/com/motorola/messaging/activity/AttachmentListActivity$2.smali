.class Lcom/motorola/messaging/activity/AttachmentListActivity$2;
.super Ljava/lang/Object;
.source "AttachmentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/AttachmentListActivity;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/AttachmentListActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$2;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/motorola/messaging/activity/AttachmentListActivity$2;->this$0:Lcom/motorola/messaging/activity/AttachmentListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 224
    return-void
.end method
