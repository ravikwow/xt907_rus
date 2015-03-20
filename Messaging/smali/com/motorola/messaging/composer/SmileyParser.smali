.class public Lcom/motorola/messaging/composer/SmileyParser;
.super Ljava/lang/Object;
.source "SmileyParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/composer/SmileyParser$IconsCache;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/motorola/messaging/composer/SmileyParser;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIconsCache:Lcom/motorola/messaging/composer/SmileyParser$IconsCache;

.field private final mPattern:Ljava/util/regex/Pattern;

.field private final mSmileyStrings:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/motorola/messaging/composer/SmileyParser;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/motorola/messaging/composer/SmileyParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/SmileyParser;->mSmileyStrings:[Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/motorola/messaging/composer/SmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/composer/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    .line 75
    new-instance v0, Lcom/motorola/messaging/composer/SmileyParser$IconsCache;

    iget-object v1, p0, Lcom/motorola/messaging/composer/SmileyParser;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/motorola/messaging/composer/SmileyParser$IconsCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/messaging/composer/SmileyParser;->mIconsCache:Lcom/motorola/messaging/composer/SmileyParser$IconsCache;

    .line 76
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 8

    .prologue
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/motorola/messaging/composer/SmileyParser;->mSmileyStrings:[Ljava/lang/String;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 88
    .local v3, "patternString":Ljava/lang/StringBuilder;
    const/16 v5, 0x28

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    iget-object v0, p0, Lcom/motorola/messaging/composer/SmileyParser;->mSmileyStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 90
    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const/16 v5, 0x7c

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const-string v7, ")"

    invoke-virtual {v3, v5, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    return-object v5
.end method

.method public static getInstance()Lcom/motorola/messaging/composer/SmileyParser;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/motorola/messaging/composer/SmileyParser;->sInstance:Lcom/motorola/messaging/composer/SmileyParser;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    new-instance v0, Lcom/motorola/messaging/composer/SmileyParser;

    invoke-direct {v0, p0}, Lcom/motorola/messaging/composer/SmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/messaging/composer/SmileyParser;->sInstance:Lcom/motorola/messaging/composer/SmileyParser;

    .line 69
    return-void
.end method


# virtual methods
.method public parseSmileysFromText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/motorola/messaging/composer/SmileyParser;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 112
    .local v1, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 113
    const/4 v3, 0x0

    .line 114
    .local v3, "smileyPos":I
    iget-object v5, p0, Lcom/motorola/messaging/composer/SmileyParser;->mSmileyStrings:[Ljava/lang/String;

    array-length v4, v5

    .line 115
    .local v4, "textsLength":I
    :goto_1
    if-ge v3, v4, :cond_0

    .line 116
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/motorola/messaging/composer/SmileyParser;->mSmileyStrings:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    :cond_0
    iget-object v5, p0, Lcom/motorola/messaging/composer/SmileyParser;->mIconsCache:Lcom/motorola/messaging/composer/SmileyParser$IconsCache;

    invoke-virtual {v5, v3}, Lcom/motorola/messaging/composer/SmileyParser$IconsCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    .local v2, "smiley":Landroid/graphics/drawable/Drawable;
    new-instance v5, Landroid/text/style/ImageSpan;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 115
    .end local v2    # "smiley":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 126
    .end local v3    # "smileyPos":I
    .end local v4    # "textsLength":I
    :cond_2
    return-object v0
.end method
