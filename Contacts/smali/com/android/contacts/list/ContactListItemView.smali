.class public Lcom/android/contacts/list/ContactListItemView;
.super Landroid/view/ViewGroup;
.source "ContactListItemView.java"

# interfaces
.implements Landroid/widget/AbsListView$SelectionBoundsAdjuster;
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListItemView$PhotoPosition;
    }
.end annotation


# static fields
.field public static final DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private static SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mActivatedStateSupported:Z

.field private mBoundsWithoutHeader:Landroid/graphics/Rect;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private final mCheckBoxMargin:I

.field private final mCheckBoxSize:I

.field private final mContactsCountTextColor:I

.field private mCountView:Landroid/widget/TextView;

.field private final mCountViewTextSize:I

.field private final mDataBuffer:Landroid/database/CharArrayBuffer;

.field private mDataView:Landroid/widget/TextView;

.field private mDataViewHeight:I

.field private final mDataViewWidthWeight:I

.field private mDefaultPhotoViewSize:I

.field private final mGapBetweenImageAndText:I

.field private final mGapBetweenLabelAndData:I

.field private mHeaderBackgroundHeight:I

.field private mHeaderDivider:Landroid/view/View;

.field private final mHeaderTextColor:I

.field private final mHeaderTextIndent:I

.field private final mHeaderTextSize:I

.field private mHeaderTextView:Landroid/widget/TextView;

.field private final mHeaderUnderlineColor:I

.field private final mHeaderUnderlineHeight:I

.field private mHeaderVisible:Z

.field private mHighlightedPrefix:[C

.field private mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerVisible:Z

.field private mKeepHorizontalPaddingForPhotoView:Z

.field private mKeepVerticalPaddingForPhotoView:Z

.field private mLabelAndDataViewMaxHeight:I

.field private mLabelView:Landroid/widget/TextView;

.field private mLabelViewHeight:I

.field private final mLabelViewWidthWeight:I

.field private mNameTextView:Landroid/widget/TextView;

.field private mNameTextViewHeight:I

.field private final mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

.field private mPhoneticNameTextView:Landroid/widget/TextView;

.field private mPhoneticNameTextViewHeight:I

.field private mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

.field private mPhotoView:Landroid/widget/ImageView;

.field private mPhotoViewHeight:I

.field private mPhotoViewWidth:I

.field private mPhotoViewWidthAndHeightAreReady:Z

.field private final mPreferredHeight:I

.field private mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

.field private mPresenceIcon:Landroid/widget/ImageView;

.field private final mPresenceIconMargin:I

.field private final mPresenceIconSize:I

.field private mQuickContact:Landroid/widget/QuickContactBadge;

.field private mQuickContactEnabled:Z

.field private mSecondaryTextColor:Landroid/content/res/ColorStateList;

.field private mSelectionBoundsMarginLeft:I

.field private mSelectionBoundsMarginRight:I

.field private mSnippetTextViewHeight:I

.field private mSnippetView:Landroid/widget/TextView;

.field private mStatusTextViewHeight:I

.field private mStatusView:Landroid/widget/TextView;

.field private final mTextIndent:I

.field private mUnknownNameText:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->RIGHT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 1432
    const-string v0, "([\\w-\\.]+)@((?:[\\w]+\\.)+)([a-zA-Z]{2,4})|[\\w]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v8, 0x4

    const/high16 v7, -0x1000000

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 215
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 125
    sget-object v2, Lcom/android/contacts/list/ContactListItemView;->DEFAULT_PHOTO_POSITION:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 134
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 180
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 199
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    .line 200
    new-instance v2, Landroid/database/CharArrayBuffer;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    .line 208
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    .line 216
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    .line 219
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/R$styleable;->ContactListItemView:[I

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 220
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .line 222
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    .line 227
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    .line 229
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    .line 231
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    .line 233
    const/16 v2, 0x10

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    .line 235
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    .line 237
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    .line 239
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    .line 241
    const/16 v2, 0x12

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    .line 243
    const/16 v2, 0x13

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 245
    const/16 v2, 0x14

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    .line 247
    const/16 v2, 0x15

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    .line 249
    const/16 v2, 0x17

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    .line 251
    const/16 v2, 0x18

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    .line 253
    const/16 v2, 0x16

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    .line 255
    const/16 v2, 0x19

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    .line 257
    const/16 v2, 0x1a

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    .line 261
    iput v6, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMargin:I

    .line 262
    const/16 v2, 0x1e

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxSize:I

    .line 265
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/contacts/list/ContactListItemView;->setPadding(IIII)V

    .line 275
    const/16 v2, 0xf

    const v3, -0xff0100

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 277
    .local v1, "prefixHighlightColor":I
    new-instance v2, Lcom/android/contacts/format/PrefixHighlighter;

    invoke-direct {v2, v1}, Lcom/android/contacts/format/PrefixHighlighter;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    .line 278
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    .line 282
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    .line 286
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    :cond_0
    return-void
.end method

.method private ensurePhotoViewSize()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    if-nez v0, :cond_2

    .line 670
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    iput v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 671
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 672
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-nez v0, :cond_0

    .line 673
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    .line 675
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    if-nez v0, :cond_1

    .line 676
    iput v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    .line 680
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 682
    :cond_2
    return-void
.end method

.method private getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 699
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoViewSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 700
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 701
    return-object v0
.end method

.method private getTextEllipsis()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    .prologue
    .line 1107
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method private setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 966
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 969
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 970
    .local v0, "spannable":Landroid/text/SpannableString;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 972
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 974
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMarqueeText(Landroid/widget/TextView;[CI)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "text"    # [C
    .param p3, "size"    # I

    .prologue
    const/4 v2, 0x0

    .line 958
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 959
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, v2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 963
    :goto_0
    return-void

    .line 961
    :cond_0
    invoke-virtual {p1, p2, v2, p3}, Landroid/widget/TextView;->setText([CII)V

    goto :goto_0
.end method

.method public static snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;
    .locals 15

    .prologue
    .line 1340
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 1341
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1343
    :cond_0
    const/4 v1, 0x0

    .line 1423
    :goto_1
    return-object v1

    .line 1340
    :cond_1
    const/4 v1, 0x0

    move-object v2, v1

    goto :goto_0

    .line 1348
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1349
    :goto_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3, v4}, Lcom/android/contacts/list/ContactListItemView;->split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1352
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1353
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1354
    const/4 v1, 0x0

    goto :goto_1

    .line 1348
    :cond_4
    const-string v1, ""

    goto :goto_2

    .line 1358
    :cond_5
    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1361
    array-length v8, v7

    const/4 v1, 0x0

    move v6, v1

    :goto_3
    if-ge v6, v8, :cond_e

    aget-object v9, v7, v6

    .line 1362
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1365
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1366
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    invoke-static {v9, v10, v11}, Lcom/android/contacts/list/ContactListItemView;->split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 1371
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1373
    const/4 v4, -0x1

    .line 1374
    const/4 v3, -0x1

    .line 1375
    const/4 v1, 0x0

    move v5, v4

    move v4, v3

    move v3, v1

    :goto_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 1376
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1377
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1378
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1381
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    const/4 v1, -0x1

    if-ne v5, v1, :cond_6

    .line 1386
    const/4 v1, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v13, 0x4000000000000000L

    div-double/2addr v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    sub-int v4, v3, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1390
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1375
    :cond_6
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 1395
    :cond_7
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1400
    :cond_8
    const/4 v1, -0x1

    if-le v5, v1, :cond_d

    .line 1401
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1402
    if-lez v5, :cond_9

    .line 1403
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_9
    :goto_6
    if-ge v5, v4, :cond_b

    .line 1406
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1407
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1408
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1409
    add-int/lit8 v1, v4, -0x1

    if-ge v5, v1, :cond_a

    .line 1411
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v1, v5, 0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v9, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1416
    :cond_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_c

    .line 1417
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1419
    :cond_c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1361
    :cond_d
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_3

    .line 1423
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private static split(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1446
    .local p1, "tokens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "offsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/contacts/list/ContactListItemView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1447
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1448
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1451
    :cond_0
    return-void
.end method


# virtual methods
.method public adjustListItemSelectionBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 655
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 656
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 657
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 658
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 659
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 727
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 730
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 734
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 735
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 706
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 707
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 710
    :cond_0
    return-void
.end method

.method public getCountView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1044
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    .line 1045
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1047
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1048
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDataView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 983
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    .line 984
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 985
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 986
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 987
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 988
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    return-object v0
.end method

.method protected getDefaultPhotoViewSize()I
    .locals 1

    .prologue
    .line 689
    iget v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDefaultPhotoViewSize:I

    return v0
.end method

.method public getLabelView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 922
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 923
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    .line 924
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 925
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 926
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 927
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v0, v1, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 932
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 936
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 937
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    return-object v0

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_0
.end method

.method public getNameTextView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 859
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 860
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 862
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030044

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 865
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 866
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 867
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhoneticNameTextView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 891
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    .line 893
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 894
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 895
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 896
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 897
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 898
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPhotoView()Landroid/widget/ImageView;
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 805
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 806
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 808
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getQuickContact()Landroid/widget/QuickContactBadge;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 783
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "QuickContact is disabled for this view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-nez v0, :cond_2

    .line 787
    new-instance v0, Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 788
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getDefaultPhotoLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 789
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b01ef

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 795
    iput-boolean v5, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    return-object v0
.end method

.method public getSnippetView()Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1011
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1012
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    .line 1013
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1014
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1015
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1016
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1017
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1018
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1028
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    .line 1029
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1030
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->getTextEllipsis()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1031
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v2, 0x1030046

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1032
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mSecondaryTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1033
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setActivated(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideDisplayName()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 1131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    .line 1133
    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 1294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isVisible(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 662
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 719
    invoke-super {p0}, Landroid/view/ViewGroup;->jumpDrawablesToCurrentState()V

    .line 720
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 723
    :cond_0
    return-void
.end method

.method protected layoutRightSide(IIII)I
    .locals 3
    .param p1, "height"    # I
    .param p2, "topBound"    # I
    .param p3, "bottomBound"    # I
    .param p4, "rightBound"    # I

    .prologue
    .line 640
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getMeasuredWidth()I

    move-result v0

    .line 642
    .local v0, "iconWidth":I
    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBoxMargin:I

    add-int/2addr v1, v0

    sub-int/2addr p4, v1

    .line 643
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    add-int v2, p4, v0

    invoke-virtual {v1, p4, p2, v2, p1}, Landroid/widget/CheckBox;->layout(IIII)V

    .line 649
    .end local v0    # "iconWidth":I
    :cond_0
    return p4
.end method

.method protected onLayout(ZIIII)V
    .locals 21
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 466
    sub-int v6, p5, p3

    .line 467
    .local v6, "height":I
    sub-int v16, p4, p2

    .line 470
    .local v16, "width":I
    const/4 v14, 0x0

    .line 471
    .local v14, "topBound":I
    move v4, v6

    .line 472
    .local v4, "bottomBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v8

    .line 473
    .local v8, "leftBound":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v17

    sub-int v11, v16, v17

    .line 476
    .local v11, "rightBound":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextIndent:I

    move/from16 v18, v0

    add-int v18, v18, v8

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    sub-int v18, v11, v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 487
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v11, v2}, Landroid/view/View;->layout(IIII)V

    .line 491
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v14, v14, v17

    .line 495
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    move/from16 v18, v0

    sub-int v18, v6, v18

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1, v11, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    move/from16 v17, v0

    sub-int v4, v4, v17

    .line 504
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 506
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactListItemView;->isActivated()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mBoundsWithoutHeader:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 510
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 511
    .local v10, "photoView":Landroid/view/View;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 513
    if-eqz v10, :cond_11

    .line 515
    sub-int v17, v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v9, v14, v17

    .line 516
    .local v9, "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    add-int v17, v17, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v8, v9, v0, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v8, v8, v17

    .line 544
    .end local v9    # "photoTop":I
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v14, v4, v11}, Lcom/android/contacts/list/ContactListItemView;->layoutRightSide(IIII)I

    move-result v11

    .line 548
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v18, v0

    add-int v15, v17, v18

    .line 550
    .local v15, "totalTextHeight":I
    add-int v17, v4, v14

    sub-int v17, v17, v15

    div-int/lit8 v13, v17, 0x2

    .line 554
    .local v13, "textTopBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 563
    :cond_5
    move v12, v8

    .line 564
    .local v12, "statusLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v7

    .line 566
    .local v7, "iconWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    add-int v18, v8, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v13, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    move/from16 v17, v0

    add-int v17, v17, v7

    add-int v12, v12, v17

    .line 574
    .end local v7    # "iconWidth":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v12, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 581
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 582
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 586
    :cond_9
    move v5, v8

    .line 587
    .local v5, "dataLeftBound":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 592
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 596
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v17, v0

    sget-object v18, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v18

    sub-int v18, v11, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v20, v0

    add-int v20, v20, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    sub-int v11, v11, v17

    .line 615
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v11, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 621
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 622
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v17, v0

    add-int v13, v13, v17

    .line 625
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v13, v11, v1}, Landroid/widget/TextView;->layout(IIII)V

    .line 631
    :cond_f
    return-void

    .line 510
    .end local v5    # "dataLeftBound":I
    .end local v10    # "photoView":Landroid/view/View;
    .end local v12    # "statusLeftBound":I
    .end local v13    # "textTopBound":I
    .end local v15    # "totalTextHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    goto/16 :goto_0

    .line 522
    .restart local v10    # "photoView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 524
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v18, v0

    add-int v17, v17, v18

    add-int v8, v8, v17

    goto/16 :goto_1

    .line 528
    :cond_12
    if-eqz v10, :cond_13

    .line 530
    sub-int v17, v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v9, v14, v17

    .line 531
    .restart local v9    # "photoTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    sub-int v17, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v9, v11, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    move/from16 v18, v0

    add-int v17, v17, v18

    sub-int v11, v11, v17

    .line 540
    .end local v9    # "photoTop":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    move/from16 v17, v0

    add-int v8, v8, v17

    goto/16 :goto_1

    .line 606
    .restart local v5    # "dataLeftBound":I
    .restart local v12    # "statusLeftBound":I
    .restart local v13    # "textTopBound":I
    .restart local v15    # "totalTextHeight":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v17

    add-int v5, v8, v17

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v18, v0

    add-int v18, v18, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    move/from16 v19, v0

    add-int v19, v19, v13

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v5, v2}, Landroid/widget/TextView;->layout(IIII)V

    .line 611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    move/from16 v17, v0

    add-int v5, v5, v17

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 303
    const/4 v10, 0x0

    invoke-static {v10, p1}, Lcom/android/contacts/list/ContactListItemView;->resolveSize(II)I

    move-result v7

    .line 305
    .local v7, "specWidth":I
    iget-boolean v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v10, :cond_d

    .line 306
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int v6, v10, v11

    .line 311
    .local v6, "preferredHeight":I
    :goto_0
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 312
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 313
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    .line 314
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    .line 315
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 316
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 317
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 319
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListItemView;->ensurePhotoViewSize()V

    .line 324
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    if-gtz v10, :cond_0

    iget-boolean v10, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    if-eqz v10, :cond_e

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidth:I

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenImageAndText:I

    add-int/2addr v11, v12

    sub-int v1, v10, v11

    .line 334
    .local v1, "effectiveWidth":I
    :goto_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 336
    move v5, v1

    .line 337
    .local v5, "nameTextWidth":I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v11, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-eq v10, v11, :cond_1

    .line 338
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mTextIndent:I

    sub-int/2addr v5, v10

    .line 340
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 343
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    .line 346
    .end local v5    # "nameTextWidth":I
    :cond_2
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 347
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 350
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    .line 357
    :cond_3
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 358
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 359
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mGapBetweenLabelAndData:I

    sub-int v9, v1, v10

    .line 360
    .local v9, "totalWidth":I
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    mul-int/2addr v10, v9

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v11, v12

    div-int v0, v10, v11

    .line 362
    .local v0, "dataWidth":I
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    mul-int/2addr v10, v9

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewWidthWeight:I

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewWidthWeight:I

    add-int/2addr v11, v12

    div-int v3, v10, v11

    .line 377
    .end local v9    # "totalWidth":I
    .local v3, "labelWidth":I
    :goto_2
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 378
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v0, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 380
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    .line 383
    :cond_4
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 386
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    sget-object v11, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    if-ne v10, v11, :cond_12

    const/high16 v4, 0x40000000

    .line 388
    .local v4, "mode":I
    :goto_3
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 390
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    .line 392
    .end local v4    # "mode":I
    :cond_5
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelViewHeight:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mDataViewHeight:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    .line 394
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 395
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v1, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 398
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    .line 402
    :cond_6
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 403
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v12, 0x40000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconSize:I

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/ImageView;->measure(II)V

    .line 406
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 409
    :cond_7
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 412
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 413
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v1, v10

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIconMargin:I

    sub-int v8, v10, v11

    .line 418
    .local v8, "statusWidth":I
    :goto_4
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 420
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    .line 425
    .end local v8    # "statusWidth":I
    :cond_8
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextViewHeight:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextViewHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelAndDataViewMaxHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetTextViewHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusTextViewHeight:I

    add-int v2, v10, v11

    .line 430
    .local v2, "height":I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 431
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/widget/CheckBox;->measure(II)V

    .line 436
    :cond_9
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewHeight:I

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 439
    iget-boolean v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    if-eqz v10, :cond_a

    .line 440
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerHeight:I

    add-int/2addr v2, v10

    .line 444
    :cond_a
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 447
    iget-boolean v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    if-eqz v10, :cond_c

    .line 448
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/high16 v11, 0x40000000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 451
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v10, :cond_b

    .line 452
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/high16 v11, -0x80000000

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v12, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->measure(II)V

    .line 456
    :cond_b
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget-object v11, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    .line 458
    iget v10, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderBackgroundHeight:I

    iget v11, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineHeight:I

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 461
    :cond_c
    invoke-virtual {p0, v7, v2}, Lcom/android/contacts/list/ContactListItemView;->setMeasuredDimension(II)V

    .line 462
    return-void

    .line 308
    .end local v0    # "dataWidth":I
    .end local v1    # "effectiveWidth":I
    .end local v2    # "height":I
    .end local v3    # "labelWidth":I
    .end local v6    # "preferredHeight":I
    :cond_d
    iget v6, p0, Lcom/android/contacts/list/ContactListItemView;->mPreferredHeight:I

    .restart local v6    # "preferredHeight":I
    goto/16 :goto_0

    .line 328
    :cond_e
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingLeft()I

    move-result v10

    sub-int v10, v7, v10

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPaddingRight()I

    move-result v11

    sub-int v1, v10, v11

    .restart local v1    # "effectiveWidth":I
    goto/16 :goto_1

    .line 365
    :cond_f
    move v0, v1

    .line 366
    .restart local v0    # "dataWidth":I
    const/4 v3, 0x0

    .restart local v3    # "labelWidth":I
    goto/16 :goto_2

    .line 369
    .end local v0    # "dataWidth":I
    .end local v3    # "labelWidth":I
    :cond_10
    const/4 v0, 0x0

    .line 370
    .restart local v0    # "dataWidth":I
    iget-object v10, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-virtual {p0, v10}, Lcom/android/contacts/list/ContactListItemView;->isVisible(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 371
    move v3, v1

    .restart local v3    # "labelWidth":I
    goto/16 :goto_2

    .line 373
    .end local v3    # "labelWidth":I
    :cond_11
    const/4 v3, 0x0

    .restart local v3    # "labelWidth":I
    goto/16 :goto_2

    .line 386
    :cond_12
    const/high16 v4, -0x80000000

    goto/16 :goto_3

    .line 416
    :cond_13
    move v8, v1

    .restart local v8    # "statusWidth":I
    goto/16 :goto_4
.end method

.method public removePhotoView()V
    .locals 2

    .prologue
    .line 819
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView(ZZ)V

    .line 820
    return-void
.end method

.method public removePhotoView(ZZ)V
    .locals 2
    .param p1, "keepHorizontalPadding"    # Z
    .param p2, "keepVerticalPadding"    # Z

    .prologue
    const/4 v1, 0x0

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoViewWidthAndHeightAreReady:Z

    .line 832
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepHorizontalPaddingForPhotoView:Z

    .line 833
    iput-boolean p2, p0, Lcom/android/contacts/list/ContactListItemView;->mKeepVerticalPaddingForPhotoView:Z

    .line 834
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 836
    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoView:Landroid/widget/ImageView;

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->removeView(Landroid/view/View;)V

    .line 840
    iput-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    .line 842
    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 1278
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->forceLayout()V

    .line 1279
    return-void
.end method

.method public setActivatedStateSupported(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1270
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedStateSupported:Z

    .line 1271
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1287
    :cond_0
    return-void
.end method

.method public setCountView(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1058
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1063
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getCountView()Landroid/widget/TextView;

    .line 1064
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1065
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mCountViewTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1066
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContactsCountTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setData([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    .line 946
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    :cond_1
    :goto_0
    return-void

    .line 951
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getDataView()Landroid/widget/TextView;

    .line 952
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 953
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDividerVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHorizontalDividerVisible:Z

    .line 743
    return-void
.end method

.method public setHighlightedPrefix([C)V
    .locals 0
    .param p1, "upperCasePrefix"    # [C

    .prologue
    .line 851
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    .line 852
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getLabelView()Landroid/widget/TextView;

    .line 913
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 914
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mLabelView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhoneticName([CI)V
    .locals 2
    .param p1, "text"    # [C
    .param p2, "size"    # I

    .prologue
    .line 876
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 885
    :cond_1
    :goto_0
    return-void

    .line 881
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getPhoneticNameTextView()Landroid/widget/TextView;

    .line 882
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;[CI)V

    .line 883
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V
    .locals 0
    .param p1, "photoPosition"    # Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhotoPosition:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    .line 1306
    return-void
.end method

.method public setPresence(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1091
    if-eqz p1, :cond_2

    .line 1092
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 1093
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    .line 1094
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1098
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    :cond_1
    :goto_0
    return-void

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPresenceIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 296
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContactEnabled:Z

    .line 297
    return-void
.end method

.method public setSectionHeader(Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 749
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 750
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 751
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    .line 752
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 754
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 755
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 756
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-nez v0, :cond_1

    .line 759
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    .line 760
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    iget v1, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderUnderlineColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 761
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 767
    iput-boolean v3, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    .line 777
    :goto_0
    return-void

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 772
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 775
    :cond_4
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHeaderVisible:Z

    goto :goto_0
.end method

.method public setSelectionBoundsHorizontalMargin(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1317
    iput p1, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginLeft:I

    .line 1318
    iput p2, p0, Lcom/android/contacts/list/ContactListItemView;->mSelectionBoundsMarginRight:I

    .line 1319
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getSnippetView()Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/contacts/format/PrefixHighlighter;->setText(Landroid/widget/TextView;Ljava/lang/String;[C)V

    .line 1003
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mSnippetView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1085
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getStatusView()Landroid/widget/TextView;

    .line 1082
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mStatusView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setUnknownNameText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "unknownNameText"    # Ljava/lang/CharSequence;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    .line 293
    return-void
.end method

.method public showCheckBox(Z)V
    .locals 3
    .param p1, "bNeedShow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1182
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 1184
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 1185
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 1186
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 1187
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setFocusableInTouchMode(Z)V

    .line 1188
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->addView(Landroid/view/View;)V

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1196
    :cond_1
    :goto_0
    return-void

    .line 1192
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public showData(Landroid/database/Cursor;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "dataColumnIndex"    # I

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v0}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1266
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mDataBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setData([CI)V

    .line 1267
    return-void
.end method

.method public showDisplayName(Landroid/database/Cursor;II)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "nameColumnIndex"    # I
    .param p3, "displayOrder"    # I

    .prologue
    .line 1111
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1113
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPrefixHighlighter:Lcom/android/contacts/format/PrefixHighlighter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mHighlightedPrefix:[C

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/format/PrefixHighlighter;->apply(Ljava/lang/CharSequence;[C)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1117
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getNameTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setMarqueeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    if-eqz v1, :cond_0

    .line 1123
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mQuickContact:Landroid/widget/QuickContactBadge;

    iget-object v2, p0, Lcom/android/contacts/list/ContactListItemView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b01ef

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/list/ContactListItemView;->mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/QuickContactBadge;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1126
    :cond_0
    return-void

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mUnknownNameText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public showPhoneticName(Landroid/database/Cursor;I)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "phoneticNameColumnIndex"    # I

    .prologue
    .line 1136
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    invoke-interface {p1, p2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 1137
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 1138
    .local v0, "phoneticNameSize":I
    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, p0, Lcom/android/contacts/list/ContactListItemView;->mPhoneticNameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    .line 1143
    :goto_0
    return-void

    .line 1141
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;->setPhoneticName([CI)V

    goto :goto_0
.end method

.method public showPresenceAndStatusMessage(Landroid/database/Cursor;II)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "presenceColumnIndex"    # I
    .param p3, "contactStatusColumnIndex"    # I

    .prologue
    .line 1157
    const/4 v0, 0x0

    .line 1158
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 1159
    .local v1, "presence":I
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1160
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1161
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactPresenceIconUtil;->getPresenceIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1163
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setPresence(Landroid/graphics/drawable/Drawable;)V

    .line 1165
    const/4 v2, 0x0

    .line 1166
    .local v2, "statusMessage":Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1167
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1171
    :cond_1
    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 1172
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/contacts/ContactStatusUtil;->getStatusString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1174
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListItemView;->setStatus(Ljava/lang/CharSequence;)V

    .line 1175
    return-void
.end method

.method public showSnippet(Landroid/database/Cursor;I)V
    .locals 21
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "summarySnippetColumnIndex"    # I

    .prologue
    .line 1203
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    move/from16 v0, p2

    if-gt v3, v0, :cond_0

    .line 1204
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 1259
    :goto_0
    return-void

    .line 1208
    :cond_0
    invoke-interface/range {p1 .. p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1211
    .local v2, "columnContent":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 1212
    .local v12, "extras":Landroid/os/Bundle;
    const-string v3, "deferred_snippeting"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1213
    const-string v3, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1216
    .local v10, "displayNameIndex":I
    if-gez v10, :cond_2

    const/4 v3, 0x0

    :goto_1
    const-string v4, "deferred_snippeting_query"

    invoke-virtual {v12, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const-string v7, "\u2026"

    const/4 v8, 0x5

    invoke-static/range {v2 .. v8}, Lcom/android/contacts/list/ContactListItemView;->snippetize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CCLjava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 1228
    .end local v10    # "displayNameIndex":I
    .local v18, "snippet":Ljava/lang/String;
    :goto_2
    if-eqz v18, :cond_1

    .line 1229
    const/4 v14, 0x0

    .line 1230
    .local v14, "from":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    .line 1231
    .local v20, "to":I
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    .line 1232
    .local v19, "start":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    .line 1233
    const/16 v18, 0x0

    .line 1258
    .end local v14    # "from":I
    .end local v19    # "start":I
    .end local v20    # "to":I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    goto :goto_0

    .line 1216
    .end local v18    # "snippet":Ljava/lang/String;
    .restart local v10    # "displayNameIndex":I
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1225
    .end local v10    # "displayNameIndex":I
    :cond_3
    move-object/from16 v18, v2

    .restart local v18    # "snippet":Ljava/lang/String;
    goto :goto_2

    .line 1235
    .restart local v14    # "from":I
    .restart local v19    # "start":I
    .restart local v20    # "to":I
    :cond_4
    const/16 v3, 0xa

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v13

    .line 1236
    .local v13, "firstNl":I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_5

    .line 1237
    add-int/lit8 v14, v13, 0x1

    .line 1239
    :cond_5
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 1240
    .local v11, "end":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_6

    .line 1241
    const/16 v3, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1242
    .local v16, "lastNl":I
    const/4 v3, -0x1

    move/from16 v0, v16

    if-eq v0, v3, :cond_6

    .line 1243
    move/from16 v20, v16

    .line 1247
    .end local v16    # "lastNl":I
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1248
    .local v17, "sb":Ljava/lang/StringBuilder;
    move v15, v14

    .local v15, "i":I
    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_8

    .line 1249
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1250
    .local v9, "c":C
    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    const/4 v3, 0x1

    if-eq v9, v3, :cond_7

    .line 1252
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1248
    :cond_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 1255
    .end local v9    # "c":C
    :cond_8
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_3
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 1300
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListItemView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactListItemView;->setChecked(Z)V

    .line 1301
    return-void

    .line 1300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/contacts/list/ContactListItemView;->mActivatedBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
