.class Lcom/android/contacts/editor/LabeledEditorView$3;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/LabeledEditorView;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    iput-object p2, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$editText:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x0

    .line 399
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "customText":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 401
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mState:Lcom/android/contacts/model/RawContactDelta;
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$200(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v5

    invoke-static {v4, v5, v6}, Lcom/android/contacts/model/RawContactModifier;->getValidTypes(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/account/AccountType$EditType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 403
    .local v0, "allTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # setter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-static {v4, v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/account/AccountType$EditType;

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 405
    .local v2, "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    iget-object v4, v2, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 406
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # setter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-static {v4, v2}, Lcom/android/contacts/editor/LabeledEditorView;->access$402(Lcom/android/contacts/editor/LabeledEditorView;Lcom/android/contacts/model/account/AccountType$EditType;)Lcom/android/contacts/model/account/AccountType$EditType;

    .line 410
    .end local v2    # "editType":Lcom/android/contacts/model/account/AccountType$EditType;
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v4

    if-nez v4, :cond_2

    .line 423
    .end local v0    # "allTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    return-void

    .line 412
    .restart local v0    # "allTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mKind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$300(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/dataitem/DataKind;->typeColumn:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-static {v6}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v6

    iget v6, v6, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 413
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mEntry:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$500(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # getter for: Lcom/android/contacts/editor/LabeledEditorView;->mType:Lcom/android/contacts/model/account/AccountType$EditType;
    invoke-static {v5}, Lcom/android/contacts/editor/LabeledEditorView;->access$400(Lcom/android/contacts/editor/LabeledEditorView;)Lcom/android/contacts/model/account/AccountType$EditType;

    move-result-object v5

    iget-object v5, v5, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # invokes: Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)V

    .line 415
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->requestFocusForFirstEditField()V

    .line 416
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    invoke-virtual {v4}, Lcom/android/contacts/editor/LabeledEditorView;->onLabelRebuilt()V

    goto :goto_0

    .line 419
    .end local v0    # "allTypes":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/account/AccountType$EditType;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/contacts/editor/LabeledEditorView$3;->this$0:Lcom/android/contacts/editor/LabeledEditorView;

    # invokes: Lcom/android/contacts/editor/LabeledEditorView;->rebuildLabel()V
    invoke-static {v4}, Lcom/android/contacts/editor/LabeledEditorView;->access$600(Lcom/android/contacts/editor/LabeledEditorView;)V

    goto :goto_0
.end method
