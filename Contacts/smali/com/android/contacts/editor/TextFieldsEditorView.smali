.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMinFieldHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/contacts/editor/TextFieldsEditorView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 56
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 57
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/editor/TextFieldsEditorView;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method private setupExpansionView(ZZ)V
    .locals 2
    .param p1, "shouldExist"    # Z
    .param p2, "collapsed"    # Z

    .prologue
    .line 144
    if-eqz p1, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f02004f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    :goto_1
    return-void

    .line 146
    :cond_0
    const v0, 0x7f02004e

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areOptionalFieldsVisible()Z
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllFields()V
    .locals 5

    .prologue
    .line 393
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v0, "arr$":[Landroid/widget/EditText;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 396
    .local v1, "fieldEditText":Landroid/widget/EditText;
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "arr$":[Landroid/widget/EditText;
    .end local v1    # "fieldEditText":Landroid/widget/EditText;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public editNewlyAddedField()V
    .locals 4

    .prologue
    .line 116
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, "editor":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 121
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 122
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    sget-object v2, Lcom/android/contacts/editor/TextFieldsEditorView;->TAG:Ljava/lang/String;

    const-string v3, "Failed to show soft input method."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public hasShortAndLongForms()Z
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .line 284
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 286
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    const/4 v2, 0x0

    .line 290
    .end local v0    # "editText":Landroid/widget/EditText;
    :goto_1
    return v2

    .line 284
    .restart local v0    # "editText":Landroid/widget/EditText;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 81
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 86
    const v0, 0x7f060081

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 87
    const v0, 0x7f0600d2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 88
    const v0, 0x7f060112

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 344
    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 345
    .local v2, "ss":Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 347
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 349
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 350
    .local v1, "numChildren":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 351
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 326
    .local v3, "superState":Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 328
    .local v2, "ss":Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 330
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 331
    .local v1, "numChildren":I
    :goto_0
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 333
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 330
    .end local v0    # "i":I
    .end local v1    # "numChildren":I
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_0

    .line 336
    .restart local v0    # "i":I
    .restart local v1    # "numChildren":I
    :cond_1
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .locals 7

    .prologue
    .line 156
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, "firstField":Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 159
    .local v0, "anyFieldHasFocus":Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, "arr$":[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 160
    .local v2, "editText":Landroid/widget/EditText;
    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_0

    .line 161
    move-object v3, v2

    .line 163
    :cond_0
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 164
    const/4 v0, 0x1

    .line 168
    .end local v2    # "editText":Landroid/widget/EditText;
    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 169
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    .end local v0    # "anyFieldHasFocus":Z
    .end local v1    # "arr$":[Landroid/widget/EditText;
    .end local v3    # "firstField":Landroid/widget/EditText;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void

    .line 159
    .restart local v0    # "anyFieldHasFocus":Z
    .restart local v1    # "arr$":[Landroid/widget/EditText;
    .restart local v2    # "editText":Landroid/widget/EditText;
    .restart local v3    # "firstField":Landroid/widget/EditText;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 133
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 134
    goto :goto_1

    .line 137
    .end local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 138
    return-void

    :cond_2
    move v2, v3

    .line 137
    goto :goto_2
.end method

.method public setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .locals 22
    .param p1, "kind"    # Lcom/android/contacts/model/dataitem/DataKind;
    .param p2, "entry"    # Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    .param p3, "state"    # Lcom/android/contacts/model/RawContactDelta;
    .param p4, "readOnly"    # Z
    .param p5, "vig"    # Lcom/android/contacts/editor/ViewIdGenerator;

    .prologue
    .line 177
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;Lcom/android/contacts/model/RawContactDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v4, "arr$":[Landroid/widget/EditText;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v15, :cond_0

    aget-object v9, v4, v12

    .line 181
    .local v9, "fieldEditText":Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 184
    .end local v4    # "arr$":[Landroid/widget/EditText;
    .end local v9    # "fieldEditText":Landroid/widget/EditText;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    :cond_0
    const/4 v11, 0x0

    .line 186
    .local v11, "hidePossible":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v8

    .line 187
    .local v8, "fieldCount":I
    new-array v0, v8, [Landroid/widget/EditText;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 188
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_1
    if-ge v13, v8, :cond_11

    .line 189
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/dataitem/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/account/AccountType$EditField;

    .line 190
    .local v7, "field":Lcom/android/contacts/model/account/AccountType$EditField;
    new-instance v10, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 191
    .local v10, "fieldView":Landroid/widget/EditText;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x1

    invoke-virtual {v7}, Lcom/android/contacts/model/account/AccountType$EditField;->isMultiLine()Z

    move-result v19

    if-eqz v19, :cond_3

    const/16 v19, -0x2

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->minLines:I

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 196
    iget v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->minLines:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 200
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->getContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x1030044

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    .line 201
    const/16 v19, 0x30

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v19, v0

    aput-object v10, v19, v13

    .line 203
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/dataitem/DataKind;Lcom/android/contacts/model/RawContactDelta$ValuesDelta;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setId(I)V

    .line 204
    iget v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->titleRes:I

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 205
    iget v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->titleRes:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 207
    :cond_1
    iget v14, v7, Lcom/android/contacts/model/account/AccountType$EditField;->inputType:I

    .line 208
    .local v14, "inputType":I
    invoke-virtual {v10, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 209
    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v14, v0, :cond_2

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "hyphenation_feature_enabled"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v16, 0x0

    .line 214
    .local v16, "numberFormattingEnabled":Z
    :goto_4
    if-nez v16, :cond_2

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lcom/android/contacts/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 223
    .end local v16    # "numberFormattingEnabled":Z
    :cond_2
    const/16 v19, 0x5

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 226
    iget-object v5, v7, Lcom/android/contacts/model/account/AccountType$EditField;->column:Ljava/lang/String;

    .line 227
    .local v5, "column":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 228
    .local v17, "value":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 231
    if-eqz v17, :cond_6

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    .line 234
    new-instance v19, Lcom/android/contacts/editor/TextFieldsEditorView$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/android/contacts/editor/TextFieldsEditorView$2;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_7

    if-nez p4, :cond_7

    const/16 v19, 0x1

    :goto_6
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 252
    iget-boolean v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->shortForm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 253
    const/4 v11, 0x1

    .line 254
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 268
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 191
    .end local v5    # "column":Ljava/lang/String;
    .end local v14    # "inputType":I
    .end local v17    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v19, v0

    goto/16 :goto_2

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_3

    .line 212
    .restart local v14    # "inputType":I
    :cond_5
    const/16 v16, 0x1

    goto/16 :goto_4

    .line 231
    .restart local v5    # "column":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_6
    const/16 v19, 0x0

    goto :goto_5

    .line 250
    :cond_7
    const/16 v19, 0x0

    goto :goto_6

    .line 255
    :cond_8
    const/16 v19, 0x8

    goto :goto_7

    .line 256
    :cond_9
    iget-boolean v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->longForm:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    .line 257
    const/4 v11, 0x1

    .line 258
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const/16 v19, 0x8

    :goto_9
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_8

    :cond_a
    const/16 v19, 0x0

    goto :goto_9

    .line 262
    :cond_b
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_d

    iget-boolean v0, v7, Lcom/android/contacts/model/account/AccountType$EditField;->optional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    const/4 v6, 0x1

    .line 263
    .local v6, "couldHide":Z
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    if-eqz v19, :cond_e

    if-eqz v6, :cond_e

    const/16 v18, 0x1

    .line 264
    .local v18, "willHide":Z
    :goto_b
    if-eqz v18, :cond_f

    const/16 v19, 0x8

    :goto_c
    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 265
    if-nez v11, :cond_c

    if-eqz v6, :cond_10

    :cond_c
    const/4 v11, 0x1

    :goto_d
    goto :goto_8

    .line 262
    .end local v6    # "couldHide":Z
    .end local v18    # "willHide":Z
    :cond_d
    const/4 v6, 0x0

    goto :goto_a

    .line 263
    .restart local v6    # "couldHide":Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_b

    .line 264
    .restart local v18    # "willHide":Z
    :cond_f
    const/16 v19, 0x0

    goto :goto_c

    .line 265
    :cond_10
    const/4 v11, 0x0

    goto :goto_d

    .line 272
    .end local v5    # "column":Ljava/lang/String;
    .end local v6    # "couldHide":Z
    .end local v7    # "field":Lcom/android/contacts/model/account/AccountType$EditField;
    .end local v10    # "fieldView":Landroid/widget/EditText;
    .end local v14    # "inputType":I
    .end local v17    # "value":Ljava/lang/String;
    .end local v18    # "willHide":Z
    :cond_11
    const/16 v19, 0x1

    move/from16 v0, v19

    if-gt v8, v0, :cond_12

    .line 273
    const/4 v11, 0x0

    .line 278
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v11, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    if-nez p4, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v19, 0x1

    :goto_e
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 280
    return-void

    .line 279
    :cond_13
    const/16 v19, 0x0

    goto :goto_e
.end method
