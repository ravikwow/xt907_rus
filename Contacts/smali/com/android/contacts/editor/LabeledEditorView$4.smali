.class Lcom/android/contacts/editor/LabeledEditorView$4;
.super Ljava/lang/Object;
.source "LabeledEditorView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/LabeledEditorView;->createCustomDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/LabeledEditorView;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView$4;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # invokes: Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V
    invoke-static {v0}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)V

    .line 432
    return-void
.end method
