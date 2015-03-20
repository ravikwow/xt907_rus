.class Lcom/motorola/messaging/activity/ComposeMessageActivity$54;
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

.field final synthetic val$buttonListAdapter:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/activity/ComposeMessageActivity;Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;)V
    .locals 0

    .prologue
    .line 3276
    iput-object p1, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$54;->this$0:Lcom/motorola/messaging/activity/ComposeMessageActivity;

    iput-object p2, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$54;->val$buttonListAdapter:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 3279
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/motorola/messaging/activity/ComposeMessageActivity$54;->val$buttonListAdapter:Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;

    invoke-virtual {v0, p3}, Lcom/motorola/messaging/addressingwidget/ButtonEditorListAdapter;->toogleCheck(I)V

    .line 3280
    return-void
.end method
