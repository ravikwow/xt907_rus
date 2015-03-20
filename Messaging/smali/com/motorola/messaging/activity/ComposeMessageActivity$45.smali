.class Lcom/motorola/messaging/activity/ComposeMessageActivity$45;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/activity/ComposeMessageActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

.field final synthetic val$adapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 2992
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;->val$adapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    iput-object p3, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 2995
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iget-object v1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;->val$adapter:Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;

    invoke-virtual {v1, p3}, Lcom/motorola/messaging/adapter/AttachmentTypeSelectorAdapter;->buttonToCommand(I)I

    move-result v1

    # invokes: Lcom/motorola/messaging/activity/ComposeMessageActivity;->addAttachment(I)V
    invoke-static {v0, v1}, Lcom/motorola/messaging/activity/ComposeMessageActivity;->access$4000(Lcom/motorola/messaging/activity/ComposeMessageActivity;I)V

    .line 2997
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$45;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2998
    return-void
.end method
