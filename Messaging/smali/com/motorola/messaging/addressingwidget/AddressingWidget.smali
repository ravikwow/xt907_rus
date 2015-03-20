.class public Lcom/motorola/messaging/addressingwidget/AddressingWidget;
.super Landroid/widget/LinearLayout;
.source "AddressingWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;,
        Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;,
        Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;,
        Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;
    }
.end annotation


# static fields
.field private static sBorderLessLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private static sBorderMoreLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private static sMaxHeightParams:Landroid/view/ViewGroup$LayoutParams;

.field private static sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mAddTextButtonFromTextBox:Z

.field private mAutoCompleteAdapter:Landroid/widget/CursorAdapter;

.field private mBorder:Landroid/view/View;

.field private mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

.field private mButtonHasFocus:Z

.field private mButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/addressingwidget/AddressButton;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusIndex:I

.field private mLayoutWidth:I

.field private mMenuListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;

.field private mOnButtonClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

.field private mOrientationSizeChanged:Z

.field private mPickerButton:Landroid/widget/ImageButton;

.field private mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

.field private mPickerIcon:I

.field private mPickerLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPickerToggleIcon:I

.field private mPopulateButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/messaging/addressingwidget/AddressButton;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

.field private mShowSuggestionsFlag:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field private mTextBoxHasFocus:Z

.field private mTextSize:F

.field private mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

.field private mTextViewClickListener:Landroid/view/View$OnClickListener;

.field private mTextViewHint:Ljava/lang/String;

.field private mWidgetMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    .line 76
    const/high16 v0, 0x41900000

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextSize:F

    .line 78
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOnButtonClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    .line 79
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mMenuListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;

    .line 80
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    .line 81
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewClickListener:Landroid/view/View$OnClickListener;

    .line 82
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 84
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 85
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    .line 86
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    .line 87
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    .line 88
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerIcon:I

    .line 89
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerToggleIcon:I

    .line 90
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    .line 94
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOrientationSizeChanged:Z

    .line 95
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 98
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    .line 99
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    .line 100
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAddTextButtonFromTextBox:Z

    .line 102
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    .line 105
    iput-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    .line 106
    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z

    .line 125
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->init()V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    .line 76
    const/high16 v2, 0x41900000

    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextSize:F

    .line 78
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOnButtonClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    .line 79
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mMenuListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;

    .line 80
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    .line 81
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewClickListener:Landroid/view/View$OnClickListener;

    .line 82
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 84
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 85
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    .line 86
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    .line 87
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    .line 88
    iput v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerIcon:I

    .line 89
    iput v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerToggleIcon:I

    .line 90
    iput v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    .line 93
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    .line 94
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOrientationSizeChanged:Z

    .line 95
    iput v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 98
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    .line 99
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    .line 100
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAddTextButtonFromTextBox:Z

    .line 102
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    .line 105
    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    .line 106
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z

    .line 135
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->init()V

    .line 136
    sget-object v2, Lcom/motorola/messaging/R$styleable;->AddressingWidget:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 137
    .local v1, "widgetAttrs":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    invoke-virtual {v1, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 139
    .local v0, "mode":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    invoke-virtual {p0, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setMode(I)V

    .line 142
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getLastChildOffset()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->resetFlags()V

    return-void
.end method

.method static synthetic access$1200(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V

    return-void
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->isKeyboardFullScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->isActiveInputView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->makeLastRowGone()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/motorola/messaging/addressingwidget/AddressingWidget;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setWrapContentLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/motorola/messaging/addressingwidget/AddressingWidget;Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/graphics/Bitmap;
    .param p4, "x4"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addButton(Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    return-object v0
.end method

.method static synthetic access$600(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget;

    .prologue
    .line 52
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    return v0
.end method

.method private addAutoComplete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 854
    new-instance v1, Lcom/motorola/messaging/addressingwidget/AddressRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/motorola/messaging/addressingwidget/AddressRow;-><init>(Landroid/content/Context;)V

    .line 855
    .local v1, "row":Lcom/motorola/messaging/addressingwidget/AddressRow;
    new-instance v2, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v5}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;-><init>(Landroid/content/Context;Lcom/motorola/messaging/addressingwidget/AddressingWidget;I)V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    .line 856
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextSize:F

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 857
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000

    invoke-direct {v0, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 860
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 861
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v1, v2, v5, v0}, Lcom/motorola/messaging/addressingwidget/AddressRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 863
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 868
    :cond_0
    return-void
.end method

.method private addButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 2
    .param p1, "button"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1108
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1109
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addButtonToRow(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 1112
    :cond_0
    return-void
.end method

.method private addButton(Ljava/lang/String;ZLandroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isValid"    # Z
    .param p3, "contactThumbnail"    # Landroid/graphics/Bitmap;
    .param p4, "buttonObject"    # Ljava/lang/Object;

    .prologue
    .line 1091
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/motorola/messaging/addressingwidget/AddressButton;-><init>(Landroid/content/Context;Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    .line 1092
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/AddressButton;
    invoke-virtual {v0, p1, p2}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setLabelAddress(Ljava/lang/String;Z)V

    .line 1093
    invoke-virtual {v0, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1094
    invoke-virtual {v0, p3}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setContactThumbnail(Landroid/graphics/Bitmap;)V

    .line 1095
    iget v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1096
    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 1100
    :goto_0
    return-void

    .line 1098
    :cond_0
    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addPopulateButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    goto :goto_0
.end method

.method private addButtonToRow(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 8
    .param p1, "button"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    const/4 v7, -0x2

    .line 1125
    invoke-virtual {p1}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setParentToNull()V

    .line 1127
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1128
    .local v1, "numOfChildren":I
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getLastChildOffset()I

    move-result v0

    .line 1129
    .local v0, "lastChildOffset":I
    if-ne v1, v0, :cond_0

    .line 1130
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addNewRow(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 1143
    :goto_0
    return-void

    .line 1132
    :cond_0
    add-int/lit8 v5, v0, 0x1

    sub-int v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/addressingwidget/AddressRow;

    .line 1133
    .local v2, "row":Lcom/motorola/messaging/addressingwidget/AddressRow;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 1134
    .local v3, "rowChildNum":I
    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/AddressRow;->getRowWidth()I

    move-result v5

    invoke-virtual {p1}, Lcom/motorola/messaging/addressingwidget/AddressButton;->getButtonWidth()I

    move-result v6

    add-int v4, v5, v6

    .line 1135
    .local v4, "rowWidth":I
    iget v5, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_1

    .line 1136
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addNewRow(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 1137
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setMaxHeightLayout()V

    goto :goto_0

    .line 1139
    :cond_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3, v5}, Lcom/motorola/messaging/addressingwidget/AddressRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addNewRow(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 5
    .param p1, "button"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v4, -0x2

    .line 1146
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressRow;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressRow;-><init>(Landroid/content/Context;)V

    .line 1147
    .local v0, "row":Lcom/motorola/messaging/addressingwidget/AddressRow;
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1148
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2, v1}, Lcom/motorola/messaging/addressingwidget/AddressRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getLastChildOffset()I

    move-result v2

    sub-int/2addr v1, v2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    return-void
.end method

.method private addPickerButton()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 875
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    if-nez v3, :cond_0

    .line 876
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/AddressRow;

    .line 877
    .local v0, "lastRow":Lcom/motorola/messaging/addressingwidget/AddressRow;
    new-instance v3, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    .line 878
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    const v4, 0x7f02008b

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 879
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 880
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    invoke-virtual {p0, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setOnPickerClickListener(Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;)V

    .line 881
    const/high16 v3, 0x40800000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v2, v3

    .line 883
    .local v2, "rightPadding":I
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5, v5, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 884
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 885
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 887
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x10

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 888
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3, v7, v1}, Lcom/motorola/messaging/addressingwidget/AddressRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 890
    .end local v0    # "lastRow":Lcom/motorola/messaging/addressingwidget/AddressRow;
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "rightPadding":I
    :cond_0
    return-void
.end method

.method private addPopulateButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 2
    .param p1, "button"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1119
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1122
    :cond_0
    return-void
.end method

.method private addScrollView()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1409
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1411
    .local v1, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1412
    .local v0, "index":I
    if-eq v0, v7, :cond_1

    .line 1413
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->ensureLayoutParams()V

    .line 1414
    new-instance v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    .line 1415
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    invoke-virtual {v2, v6}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 1417
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1419
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v7, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p0, v5, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1421
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    sget-object v3, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xf

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sBorderMoreLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1424
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sBorderLessLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 1425
    new-instance v2, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    .line 1426
    iget v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-ne v2, v6, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1427
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    const v3, 0x7f02009b

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1431
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    invoke-virtual {v2, v8, v5, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1433
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    add-int/lit8 v3, v0, 0x1

    sget-object v4, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sBorderLessLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    :cond_1
    return-void

    .line 1428
    :cond_2
    iget v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-ne v2, v6, :cond_0

    .line 1429
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    const v3, 0x7f02009a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private cursorAtBeginning()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1384
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v3, :cond_0

    .line 1385
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1386
    .local v1, "startCursorPosition":I
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1387
    .local v0, "endCursorPosition":I
    if-ne v1, v0, :cond_0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    .line 1389
    .end local v0    # "endCursorPosition":I
    .end local v1    # "startCursorPosition":I
    :cond_0
    return v2
.end method

.method private dispatchComposeAWKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1282
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1284
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 1285
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    .line 1337
    :cond_0
    :goto_0
    return v3

    .line 1291
    :cond_1
    iget-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsDelete(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1292
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->removeButton(I)V

    goto :goto_0

    .line 1296
    :cond_2
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1299
    .local v2, "numButtons":I
    iget-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsRight(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1300
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_3

    .line 1301
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 1302
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    goto :goto_0

    .line 1304
    :cond_3
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V

    goto :goto_0

    .line 1310
    :cond_4
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v4, :cond_6

    .line 1311
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->cursorAtBeginning()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1312
    if-lez v2, :cond_6

    .line 1313
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsLeft(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1314
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    goto :goto_0

    .line 1317
    :cond_5
    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsDelete(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1318
    iget-object v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1319
    .local v1, "length":I
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    .line 1320
    if-nez v1, :cond_0

    .line 1321
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->removeButton(I)V

    goto :goto_0

    .line 1330
    .end local v1    # "length":I
    :cond_6
    iget-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsLeft(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1331
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    if-lez v4, :cond_0

    .line 1332
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 1333
    iget v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-direct {p0, v4}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    goto/16 :goto_0

    .line 1337
    :cond_7
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method private dispatchReadAWKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1341
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1343
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1344
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1367
    :cond_0
    :goto_0
    return v2

    .line 1348
    :cond_1
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1351
    .local v1, "numButtons":I
    iget-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsRight(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1352
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    .line 1353
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 1354
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-direct {p0, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    goto :goto_0

    .line 1360
    :cond_2
    iget-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->keyCodeIsLeft(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1361
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    if-lez v3, :cond_0

    .line 1362
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 1363
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-direct {p0, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    goto :goto_0

    .line 1367
    :cond_3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method private ensureLayoutParams()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x1

    .line 823
    sget-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sMaxHeightParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;

    if-nez v2, :cond_1

    .line 824
    :cond_0
    const/high16 v2, 0x42780000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 825
    .local v0, "maxHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 826
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 827
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sMaxHeightParams:Landroid/view/ViewGroup$LayoutParams;

    .line 828
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;

    .line 837
    .end local v0    # "maxHeight":I
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    :goto_0
    return-void

    .line 829
    .restart local v0    # "maxHeight":I
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_2
    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 830
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sMaxHeightParams:Landroid/view/ViewGroup$LayoutParams;

    .line 831
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0

    .line 832
    :cond_3
    instance-of v2, v1, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 833
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sMaxHeightParams:Landroid/view/ViewGroup$LayoutParams;

    .line 834
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method private getButtonWithFocusedBackground()Lcom/motorola/messaging/addressingwidget/AddressButton;
    .locals 3

    .prologue
    .line 1216
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1217
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1218
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-virtual {v2}, Lcom/motorola/messaging/addressingwidget/AddressButton;->hasFocusedBackground()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1219
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/addressingwidget/AddressButton;

    .line 1222
    :goto_1
    return-object v2

    .line 1217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getCurrentWidth()I
    .locals 2

    .prologue
    .line 1251
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getFocusedChildInWidget()Landroid/view/View;
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1078
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/motorola/messaging/addressingwidget/AddressRow;

    if-eqz v1, :cond_0

    .line 1079
    check-cast v0, Lcom/motorola/messaging/addressingwidget/AddressRow;

    .end local v0    # "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 1081
    .restart local v0    # "focusedChild":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method private getLastChildOffset()I
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-nez v0, :cond_0

    .line 1227
    const/4 v0, 0x0

    .line 1229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleOrientationWidthChanged()V
    .locals 2

    .prologue
    .line 1235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    .line 1236
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setWrapContentLayout()V

    .line 1241
    :goto_0
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1244
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V

    .line 1248
    :cond_1
    return-void

    .line 1238
    :cond_2
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setMaxHeightLayout()V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 843
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 844
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 845
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 846
    const/high16 v0, 0x41f00000

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 847
    invoke-virtual {p0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 848
    return-void
.end method

.method private static isActiveInputView(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 1400
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1402
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isKeyboardFullScreen()Z
    .locals 2

    .prologue
    .line 1394
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1396
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static keyCodeIsDelete(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1380
    const/16 v0, 0x43

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyCodeIsLeft(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1372
    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keyCodeIsRight(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 1376
    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeLastRowGone()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1046
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1047
    .local v0, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 1048
    invoke-direct {p0, v0, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setLastRowVisibility(Landroid/view/View;I)V

    .line 1049
    const/4 v1, 0x1

    .line 1051
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeLastRowVisible()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1037
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1038
    .local v0, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1039
    invoke-direct {p0, v0, v1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setLastRowVisibility(Landroid/view/View;I)V

    .line 1040
    const/4 v1, 0x1

    .line 1042
    :cond_0
    return v1
.end method

.method private removeButton(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1271
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1273
    .local v0, "numButtons":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 1274
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1275
    .local v1, "tagObject":Ljava/lang/Object;
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    if-eqz v2, :cond_0

    .line 1276
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    invoke-virtual {v2, v1}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->onButtonDeleted(Ljava/lang/Object;)V

    .line 1279
    .end local v1    # "tagObject":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private resetButtons()V
    .locals 5

    .prologue
    .line 1259
    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getLastChildOffset()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 1260
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1261
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1262
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-direct {p0, v2}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addButtonToRow(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 1261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1264
    :cond_0
    return-void
.end method

.method private resetFlags()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 893
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    .line 894
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOrientationSizeChanged:Z

    .line 895
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 896
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    .line 897
    iput-boolean v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAddTextButtonFromTextBox:Z

    .line 899
    :cond_0
    return-void
.end method

.method private setButtonFocusState(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x1

    .line 1197
    iput p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 1198
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    .line 1199
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-ne v0, v1, :cond_0

    .line 1200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    .line 1202
    :cond_0
    return-void
.end method

.method private setComposeAWFocusListener()V
    .locals 1

    .prologue
    .line 930
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$4;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$4;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 941
    return-void
.end method

.method private setFocusListener()V
    .locals 2

    .prologue
    .line 905
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-nez v0, :cond_1

    .line 906
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setReadAWFocusListener()V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 908
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setComposeAWFocusListener()V

    goto :goto_0
.end method

.method private setFocusOnButton(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1178
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setButtonFocusState(I)V

    .line 1179
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1180
    return-void
.end method

.method private setFocusOnLastButton()V
    .locals 1

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    .line 1186
    :cond_0
    return-void
.end method

.method private setFocusOnTextView()V
    .locals 3

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v2, :cond_1

    .line 1159
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1161
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1162
    .local v0, "childCount":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    .line 1163
    .local v1, "hint":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1165
    .end local v0    # "childCount":I
    .end local v1    # "hint":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setTextViewFocusState()V

    .line 1166
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1167
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 1170
    :cond_1
    return-void

    .line 1162
    .restart local v0    # "childCount":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setLastRowVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "row"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 1062
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    if-eq p2, v2, :cond_3

    .line 1063
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1064
    .local v0, "childCount":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    .line 1065
    .local v1, "hint":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v2, :cond_0

    .line 1066
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1069
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    .end local v0    # "childCount":I
    .end local v1    # "hint":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1064
    .restart local v0    # "childCount":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1072
    .end local v0    # "childCount":I
    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setMaxHeightLayout()V
    .locals 2

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->ensureLayoutParams()V

    .line 814
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    sget-object v1, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sMaxHeightParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 815
    return-void
.end method

.method private setReadAWFocusListener()V
    .locals 1

    .prologue
    .line 916
    new-instance v0, Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$3;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 924
    return-void
.end method

.method private setTextViewFocusState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1189
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mFocusIndex:I

    .line 1190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    .line 1191
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-ne v0, v1, :cond_0

    .line 1192
    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    .line 1194
    :cond_0
    return-void
.end method

.method private setWrapContentLayout()V
    .locals 2

    .prologue
    .line 818
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->ensureLayoutParams()V

    .line 819
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    sget-object v1, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sWrapContentParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    return-void
.end method

.method private updateComposeAWGainFocus(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 983
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    if-eqz v1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 985
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    sget-object v2, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sBorderLessLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->makeLastRowVisible()Z

    move-result v0

    .line 990
    .local v0, "visibilitySet":Z
    instance-of v1, p1, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v1, :cond_2

    .line 991
    if-eqz v0, :cond_1

    .line 992
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V

    .line 1000
    .end local p1    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 997
    .restart local p1    # "child":Landroid/view/View;
    :cond_2
    instance-of v1, p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    if-eqz v1, :cond_1

    .line 998
    check-cast p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateFocusStateOnButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    goto :goto_0
.end method

.method private updateComposeAWLoseFocus(Landroid/view/View;)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1007
    instance-of v2, p1, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v2, :cond_0

    .line 1008
    invoke-virtual {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->convertTextToButton()V

    .line 1011
    :cond_0
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getFocusedChildInWidget()Landroid/view/View;

    move-result-object v1

    .line 1013
    .local v1, "focusedChild":Landroid/view/View;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_3

    .line 1014
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ScrollView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mScroller:Lcom/motorola/messaging/addressingwidget/AddressingWidget$AddressingWidgetScrollView;

    if-eqz v2, :cond_2

    .line 1015
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    const v3, 0x7f02009a

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1016
    iget-object v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mBorder:Landroid/view/View;

    sget-object v3, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->sBorderMoreLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1019
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1020
    .local v0, "childCount":I
    if-ne v0, v5, :cond_5

    .line 1021
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setLastRowVisibility(Landroid/view/View;I)V

    .line 1029
    .end local v0    # "childCount":I
    :cond_3
    :goto_0
    instance-of v2, p1, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v2, :cond_6

    .line 1030
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    .line 1034
    :cond_4
    :goto_1
    return-void

    .line 1022
    .restart local v0    # "childCount":I
    :cond_5
    if-le v0, v5, :cond_3

    .line 1023
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->makeLastRowGone()Z

    goto :goto_0

    .line 1031
    .end local v0    # "childCount":I
    :cond_6
    instance-of v2, p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    if-eqz v2, :cond_4

    .line 1032
    iput-boolean v4, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    goto :goto_1
.end method

.method private updateFocusStateOnButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 2
    .param p1, "button"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 1206
    if-nez p1, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1210
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1211
    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setButtonFocusState(I)V

    goto :goto_0
.end method

.method private updateReadAWGainFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 955
    if-nez p1, :cond_1

    .line 962
    .end local p1    # "child":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 959
    .restart local p1    # "child":Landroid/view/View;
    :cond_1
    instance-of v0, p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    if-eqz v0, :cond_0

    .line 960
    check-cast p1, Lcom/motorola/messaging/addressingwidget/AddressButton;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateFocusStateOnButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    goto :goto_0
.end method

.method private updateReadAWLoseFocus(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 970
    .local v0, "focusedChild":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/motorola/messaging/addressingwidget/AddressRow;

    if-eqz v1, :cond_0

    .line 971
    check-cast v0, Lcom/motorola/messaging/addressingwidget/AddressRow;

    .end local v0    # "focusedChild":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 974
    .restart local v0    # "focusedChild":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_2

    .line 975
    :cond_1
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->resetFlags()V

    .line 977
    :cond_2
    return-void
.end method


# virtual methods
.method public convertTextToButton()V
    .locals 5

    .prologue
    .line 489
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 491
    .local v1, "editable":Landroid/text/Editable;
    if-eqz v1, :cond_1

    .line 492
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 494
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAddTextButtonFromTextBox:Z

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v3, v2}, Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;->updateLastEnteredString(Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4}, Lcom/motorola/messaging/addressingwidget/ButtonAdapter;->onTextReady(Ljava/util/List;I)V

    .line 502
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 505
    .end local v1    # "editable":Landroid/text/Editable;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 623
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-nez v0, :cond_0

    .line 624
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->dispatchReadAWKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 628
    :goto_0
    return v0

    .line 625
    :cond_0
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 626
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->dispatchComposeAWKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 628
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getCurrentWidth()I

    move-result v2

    .line 149
    .local v2, "width":I
    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 150
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    .line 157
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 158
    .local v1, "numPopulatedButtons":I
    if-lez v1, :cond_4

    .line 159
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 160
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/messaging/addressingwidget/AddressButton;

    invoke-direct {p0, v3}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V

    .line 161
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v3, :cond_1

    .line 162
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 159
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v0    # "i":I
    .end local v1    # "numPopulatedButtons":I
    :cond_2
    iget-boolean v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOrientationSizeChanged:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    if-eq v2, v3, :cond_0

    .line 152
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    .line 153
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->resetFlags()V

    .line 154
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->resetButtons()V

    .line 155
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->handleOrientationWidthChanged()V

    goto :goto_0

    .line 165
    .restart local v0    # "i":I
    .restart local v1    # "numPopulatedButtons":I
    :cond_3
    iget-object v3, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPopulateButtons:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 166
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_4

    .line 167
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->makeLastRowGone()Z

    .line 170
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public getAutoCompleteAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public getButtonAdapter()Lcom/motorola/messaging/addressingwidget/ButtonAdapter;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    return-object v0
.end method

.method public getCurrentAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public getOnButtonClickListener()Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOnButtonClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    return-object v0
.end method

.method public getOnCreateButtonContextMenuListener()Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mMenuListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnCreateButtonContextMenuListener;

    return-object v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextSize:F

    return v0
.end method

.method protected handleGainFocus()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextBoxHasFocus:Z

    if-nez v0, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnTextView()V

    .line 946
    const/4 v0, 0x1

    .line 948
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 722
    iget-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAddTextButtonFromTextBox:Z

    if-eqz v1, :cond_1

    .line 723
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAddTextButtonFromTextBox:Z

    .line 729
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->getButtonWithFocusedBackground()Lcom/motorola/messaging/addressingwidget/AddressButton;

    move-result-object v0

    .line 730
    .local v0, "button":Lcom/motorola/messaging/addressingwidget/AddressButton;
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0}, Lcom/motorola/messaging/addressingwidget/AddressButton;->setRegularBackgroundState()V

    .line 733
    :cond_0
    iget-boolean v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonHasFocus:Z

    if-eqz v1, :cond_1

    .line 734
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnLastButton()V

    .line 737
    .end local v0    # "button":Lcom/motorola/messaging/addressingwidget/AddressButton;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 741
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 742
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mLayoutWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 743
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOrientationSizeChanged:Z

    .line 745
    :cond_0
    return-void
.end method

.method public setAutoCompleteAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 325
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mAutoCompleteAdapter:Landroid/widget/CursorAdapter;

    .line 328
    :cond_0
    return-void
.end method

.method public setButtonAdapter(Lcom/motorola/messaging/addressingwidget/ButtonAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    .line 364
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtonAdapter:Lcom/motorola/messaging/addressingwidget/ButtonAdapter;

    new-instance v1, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$1;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 416
    return-void
.end method

.method protected setFocusOnButton(Lcom/motorola/messaging/addressingwidget/AddressButton;)V
    .locals 2
    .param p1, "button"    # Lcom/motorola/messaging/addressingwidget/AddressButton;

    .prologue
    .line 795
    if-nez p1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 798
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 799
    invoke-direct {p0, v0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusOnButton(I)V

    goto :goto_0
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 2
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    iget-object v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextViewHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 207
    :cond_0
    return-void
.end method

.method public setImeOptionsForTextView(I)V
    .locals 2
    .param p1, "imeOptions"    # I

    .prologue
    .line 227
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mTextView:Lcom/motorola/messaging/addressingwidget/AddressingAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 230
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 180
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-ne v0, v2, :cond_0

    .line 181
    iput p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    .line 182
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-nez v0, :cond_1

    .line 183
    const v0, 0x7f02008b

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addScrollView()V

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->setFocusListener()V

    .line 195
    :cond_0
    return-void

    .line 185
    :cond_1
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 186
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 187
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addScrollView()V

    .line 188
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addAutoComplete()V

    goto :goto_0

    .line 190
    :cond_2
    iput v2, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Operation is not allowed as the MODE is INVALID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnButtonClickListener(Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mOnButtonClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnButtonClickListener;

    .line 423
    return-void
.end method

.method public setOnPickerClickListener(Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerClickListener:Lcom/motorola/messaging/addressingwidget/AddressingWidget$OnPickerButtonClickListener;

    .line 442
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;

    invoke-direct {v1, p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget$2;-><init>(Lcom/motorola/messaging/addressingwidget/AddressingWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    :cond_0
    return-void
.end method

.method public setPickerIcon(I)V
    .locals 2
    .param p1, "icon"    # I

    .prologue
    .line 239
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    iput p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerIcon:I

    .line 241
    invoke-direct {p0}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->addPickerButton()V

    .line 242
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_0
    return-void
.end method

.method protected setShowSuggestionsFlag(Z)V
    .locals 0
    .param p1, "showSuggestions"    # Z

    .prologue
    .line 809
    iput-boolean p1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mShowSuggestionsFlag:Z

    .line 810
    return-void
.end method

.method protected toggleIcon(Z)V
    .locals 2
    .param p1, "toggle"    # Z

    .prologue
    .line 753
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 754
    if-eqz p1, :cond_1

    .line 755
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerToggleIcon:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 756
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerToggleIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 759
    :cond_1
    iget-object v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mPickerIcon:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected updateGainFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 769
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-nez v0, :cond_0

    .line 770
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateReadAWGainFocus(Landroid/view/View;)V

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateComposeAWGainFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected updateLoseFocus(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 782
    iget v0, p0, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->mWidgetMode:I

    if-nez v0, :cond_0

    .line 783
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateReadAWLoseFocus(Landroid/view/View;)V

    .line 787
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/messaging/addressingwidget/AddressingWidget;->updateComposeAWLoseFocus(Landroid/view/View;)V

    goto :goto_0
.end method
