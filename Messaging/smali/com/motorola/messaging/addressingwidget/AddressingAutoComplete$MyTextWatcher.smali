.class Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;
.super Ljava/lang/Object;
.source "AddressingAutoComplete.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;


# direct methods
.method private constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p2, "x1"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 351
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 355
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 13
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 358
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v11, 0x0

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$502(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z

    .line 359
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v11, 0x0

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsFilter:Z
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$602(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z

    .line 360
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$000(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/EditAddress;

    move-result-object v10

    if-nez v10, :cond_7

    .line 362
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    iget-object v11, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$700(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v11

    invoke-virtual {v11}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getAutoCompleteAdapter()Landroid/widget/CursorAdapter;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 364
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$800(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    move/from16 v0, p4

    if-le v0, v10, :cond_8

    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$900(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 365
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "cpString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 367
    .local v2, "convertLastAddressToButton":Z
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 368
    .local v5, "length":I
    if-lez v5, :cond_1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_0

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3b

    if-eq v10, v11, :cond_0

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_1

    .line 370
    :cond_0
    const/4 v2, 0x1

    .line 372
    :cond_1
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, ",;\n"

    invoke-direct {v9, v3, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v9, "tokens":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    .line 375
    .local v8, "tokenCount":I
    const-string v7, ""

    .line 376
    .local v7, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_4

    .line 377
    add-int/lit8 v10, v8, -0x1

    if-eq v4, v10, :cond_3

    .line 378
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 380
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 384
    if-eqz v2, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 385
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    :cond_4
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$700(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 390
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$700(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    move-result-object v10

    invoke-virtual {v10}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v1, v11}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->onTextReady(Ljava/util/List;I)V

    .line 392
    :cond_5
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->clear()V

    .line 393
    add-int v6, p2, p4

    .line 394
    .local v6, "selection":I
    if-nez v2, :cond_6

    .line 395
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v11, 0x1

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$902(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z

    .line 396
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v11, 0x0

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$902(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z

    .line 398
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10}, Landroid/text/Editable;->length()I

    move-result v10

    if-lt v10, v6, :cond_6

    .line 399
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v10, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 402
    :cond_6
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v11, 0x0

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$1002(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v11, 0x0

    # setter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z
    invoke-static {v10, v11}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$802(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z

    .line 411
    .end local v1    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "convertLastAddressToButton":Z
    .end local v3    # "cpString":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "selection":I
    .end local v7    # "text":Ljava/lang/String;
    .end local v8    # "tokenCount":I
    .end local v9    # "tokens":Ljava/util/StringTokenizer;
    :cond_7
    :goto_2
    return-void

    .line 404
    :cond_8
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # getter for: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z
    invoke-static {v10}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$900(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 405
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 406
    .restart local v5    # "length":I
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->hasOnlyDelimiters(Ljava/lang/CharSequence;)Z
    invoke-static {v10, p1}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$1100(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    if-lez v5, :cond_7

    add-int/lit8 v10, v5, -0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x2c

    if-eq v10, v11, :cond_9

    add-int/lit8 v10, v5, -0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x3b

    if-ne v10, v11, :cond_7

    .line 407
    :cond_9
    iget-object v10, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    iget-object v11, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;->this$0:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    const/4 v12, 0x1

    # invokes: Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->returnTextToButtonAdapter(Landroid/text/Editable;Z)V
    invoke-static {v10, v11, v12}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->access$1200(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Landroid/text/Editable;Z)V

    goto :goto_2
.end method
