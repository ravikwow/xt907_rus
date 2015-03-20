.class Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;
.super Ljava/lang/Object;
.source "ProgressAttachmentButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/view/ProgressAttachmentButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageOnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/view/ProgressAttachmentButton;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;->this$0:Lcom/motorola/messaging/view/ProgressAttachmentButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/view/ProgressAttachmentButton;Lcom/motorola/messaging/view/ProgressAttachmentButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/view/ProgressAttachmentButton;
    .param p2, "x1"    # Lcom/motorola/messaging/view/ProgressAttachmentButton$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;-><init>(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/motorola/messaging/view/ProgressAttachmentButton$MessageOnClick;->this$0:Lcom/motorola/messaging/view/ProgressAttachmentButton;

    # invokes: Lcom/motorola/messaging/view/ProgressAttachmentButton;->viewAttachment()V
    invoke-static {v0}, Lcom/motorola/messaging/view/ProgressAttachmentButton;->access$200(Lcom/motorola/messaging/view/ProgressAttachmentButton;)V

    .line 113
    return-void
.end method
