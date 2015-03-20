.class public Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "AddressingAutoComplete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;
    }
.end annotation


# instance fields
.field private mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

.field private mCopyPasted:Z

.field private mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

.field private mLastEnteredString:Ljava/lang/String;

.field private mManualSetText:Z

.field private mSuggestionsFilter:Z

.field private mSuggestionsListShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 44
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z

    .line 45
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsFilter:Z

    .line 46
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z

    .line 48
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    .line 49
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .param p3, "backGroundId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 44
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z

    .line 45
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsFilter:Z

    .line 46
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 47
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z

    .line 48
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    .line 49
    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z

    .line 61
    invoke-direct {p0, p2, p3}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->init(Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/EditAddress;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->handleLoseFocus()V

    return-void
.end method

.method static synthetic access$1002(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->hasOnlyDelimiters(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Landroid/text/Editable;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Landroid/text/Editable;
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->returnTextToButtonAdapter(Landroid/text/Editable;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->handleGainFocus()V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$502(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z

    return p1
.end method

.method static synthetic access$602(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsFilter:Z

    return p1
.end method

.method static synthetic access$700(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z

    return v0
.end method

.method static synthetic access$902(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z

    return p1
.end method

.method private handleGainFocus()V
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v1, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateGainFocus(Landroid/view/View;)V

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 287
    .local v0, "length":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->max(II)I

    move-result v0

    .line 288
    invoke-virtual {p0, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 289
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->showSoftInput(I)V

    .line 290
    return-void
.end method

.method private handleLoseFocus()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateLoseFocus(Landroid/view/View;)V

    .line 277
    return-void
.end method

.method private hasOnlyDelimiters(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 335
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 336
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 337
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 338
    const/4 v2, 0x0

    .line 341
    :goto_1
    return v2

    .line 336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 341
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private init(Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V
    .locals 3
    .param p1, "parent"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .param p2, "backgroundId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x2

    .line 237
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 238
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 240
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setForceIgnoreOutsideTouch(Z)V

    .line 242
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 254
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$MyTextWatcher;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$1;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 256
    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    .line 257
    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->setDropDownHeight(I)V

    .line 258
    const/high16 v0, 0x3f800000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownVerticalOffset(I)V

    .line 259
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$2;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete$2;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;)V

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownAnchor(I)V

    .line 267
    const/high16 v0, 0x40000000

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 268
    const v0, 0x90001

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 270
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 4
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    if-gez p2, :cond_0

    .line 202
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p2

    .line 204
    :cond_0
    if-gez p2, :cond_2

    .line 228
    :cond_1
    :goto_0
    return-void

    .line 208
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 209
    .local v2, "selectedItem":Ljava/lang/Object;
    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "address":Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    if-eqz v3, :cond_3

    .line 211
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    invoke-virtual {v3, v0, p2}, Lcom/motorola/messaging/addressingwidget/EditAddress;->handlePerformCompletion(Ljava/lang/String;I)V

    goto :goto_0

    .line 214
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .local v1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z

    if-eqz v3, :cond_5

    .line 217
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 222
    :goto_1
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 223
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v3

    invoke-virtual {v3, v1, p2}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->onTextReady(Ljava/util/List;I)V

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->dismissDropDown()V

    goto :goto_0

    .line 219
    :cond_5
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->clear()V

    goto :goto_1
.end method

.method private returnTextToButtonAdapter(Landroid/text/Editable;Z)V
    .locals 4
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "isDelimiter"    # Z

    .prologue
    .line 298
    if-nez p1, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    if-eqz v2, :cond_2

    .line 302
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    invoke-virtual {v2, v1}, Lcom/motorola/messaging/addressingwidget/EditAddress;->handleEnterKeyPress(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_2
    if-eqz p2, :cond_3

    .line 306
    const-string v2, "[,;]+$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    :cond_3
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 312
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->onTextReady(Ljava/util/List;I)V

    goto :goto_0
.end method

.method private showSoftInput(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 323
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 324
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0, p0, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dismissDropDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->toggleIcon(Z)V

    .line 123
    :cond_0
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 124
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z

    .line 125
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsFilter:Z

    .line 126
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setShowSuggestionsFlag(Z)V

    .line 127
    return-void
.end method

.method public enoughToFilter()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 164
    .local v0, "editable":Landroid/text/Editable;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    const/4 v2, 0x1

    .line 170
    .end local v1    # "text":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/messaging/util/StringUtils;->textIsNotEmpty(Landroid/text/Editable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->returnTextToButtonAdapter(Landroid/text/Editable;Z)V

    .line 102
    :cond_0
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 194
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mEditAddress:Lcom/motorola/messaging/addressingwidget/EditAddress;

    if-eqz v0, :cond_0

    if-eq p1, p3, :cond_0

    .line 195
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 197
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 180
    const v0, 0x1020022

    if-ne p1, v0, :cond_0

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mCopyPasted:Z

    .line 183
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 175
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->performCompletion(Landroid/view/View;IJ)V

    .line 176
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/widget/TextView;->clearComposingText()V

    .line 189
    return-void
.end method

.method public setLastEnteredText()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z

    .line 146
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mManualSetText:Z

    .line 150
    :cond_0
    return-void
.end method

.method public showDropDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 110
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsFilter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getSuggestionsAdapter()Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mSuggestionsListShown:Z

    .line 112
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->toggleIcon(Z)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mAddressingParent:Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->toggleIcon(Z)V

    goto :goto_0
.end method

.method public updateLastEnteredString(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->mLastEnteredString:Ljava/lang/String;

    .line 157
    return-void
.end method
