.class Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;
.super Landroid/widget/ScrollView;
.source "AddressingWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/AddressingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddressingWidgetScrollView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;


# direct methods
.method public constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 1440
    invoke-direct {p0, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1441
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    const/4 v3, 0x1

    .line 1445
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$700(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1446
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1447
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v0, v4, v5

    .line 1449
    .local v0, "diff":I
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-gtz v4, :cond_0

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getCurrentAdapter()Landroid/widget/CursorAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;
    invoke-static {v5}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1700(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Landroid/widget/CursorAdapter;

    move-result-object v5

    if-ne v4, v5, :cond_2

    :cond_0
    move v1, v3

    .line 1453
    .local v1, "mTextViewFlag":Z
    :goto_0
    if-nez v0, :cond_3

    .line 1455
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z
    invoke-static {v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1800(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1456
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->showDropDown()V

    .line 1465
    .end local v0    # "diff":I
    .end local v1    # "mTextViewFlag":Z
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 1466
    return-void

    .line 1449
    .restart local v0    # "diff":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1459
    .restart local v1    # "mTextViewFlag":Z
    :cond_3
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1460
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->dismissDropDown()V

    .line 1461
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z
    invoke-static {v4, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1802(Lcom/motorola/messaging/addressingwidget/AddressingWidget;Z)Z

    goto :goto_1
.end method
