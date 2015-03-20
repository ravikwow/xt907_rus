.class Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;
.super Landroid/database/DataSetObserver;
.source "AddressingWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setButtonAdapter(Lcom/motorola/messaging/addressingwidget/ButtonAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;


# direct methods
.method constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 14

    .prologue
    .line 367
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 368
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 369
    .local v7, "numButtonsBeforeRefresh":I
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    iget-object v13, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getLastChildOffset()I
    invoke-static {v13}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$100(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 370
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setWrapContentLayout()V
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$200(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 371
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 372
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$300(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v8

    .line 373
    .local v8, "numberOfButtons":I
    const/4 v9, 0x0

    .local v9, "position":I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 374
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$300(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->getButtonLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "buttonLabel":Ljava/lang/String;
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$300(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->getButtonPicture(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 376
    .local v3, "contactThumbnail":Landroid/graphics/Bitmap;
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$300(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->isValid(I)Z

    move-result v5

    .line 377
    .local v5, "isValid":Z
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$300(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 378
    .local v1, "buttonObject":Ljava/lang/Object;
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addButton(Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/Object;)V
    invoke-static {v10, v0, v5, v3, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$400(Lcom/motorola/messaging/addressingwidget/AddressingWidget;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 373
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "buttonLabel":Ljava/lang/String;
    .end local v1    # "buttonObject":Ljava/lang/Object;
    .end local v3    # "contactThumbnail":Landroid/graphics/Bitmap;
    .end local v5    # "isValid":Z
    :cond_0
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 382
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 383
    .local v2, "childCount":I
    const/4 v10, 0x1

    if-ne v2, v10, :cond_3

    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$600(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, "hint":Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 387
    .end local v2    # "childCount":I
    .end local v4    # "hint":Ljava/lang/String;
    :cond_1
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$700(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$800(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 388
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 389
    .local v6, "numButtonsAfterRefresh":I
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$900(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    .line 390
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$900(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v10

    if-ge v10, v6, :cond_4

    .line 391
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    iget-object v11, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I
    invoke-static {v11}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$900(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I

    move-result v11

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V

    .line 414
    .end local v6    # "numButtonsAfterRefresh":I
    :cond_2
    :goto_2
    return-void

    .line 383
    .restart local v2    # "childCount":I
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 393
    .end local v2    # "childCount":I
    .restart local v6    # "numButtonsAfterRefresh":I
    :cond_4
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->resetFlags()V
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1100(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 394
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1200(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 395
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->setLastEnteredText()V

    goto :goto_2

    .line 398
    :cond_5
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 399
    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->isKeyboardFullScreen()Z
    invoke-static {}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1300()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->hasFocus()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    move-result-object v10

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->isActiveInputView(Landroid/view/View;)Z
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1400(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 400
    sub-int v10, v6, v7

    const/4 v11, 0x1

    if-le v10, v11, :cond_7

    .line 401
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b01b5

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 406
    :cond_6
    :goto_3
    if-nez v6, :cond_8

    .line 407
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1200(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    goto :goto_2

    .line 402
    :cond_7
    sub-int v10, v6, v7

    const/4 v11, 0x1

    if-ne v10, v11, :cond_6

    .line 403
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0b01b4

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 408
    :cond_8
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v10

    if-nez v10, :cond_2

    .line 409
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingWidget;->makeLastRowGone()Z
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->access$1500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Z

    goto :goto_2
.end method
