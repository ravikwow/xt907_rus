.class public Lcom/motorola/blur/util/mime/QuoteTokenizer;
.super Ljava/lang/Object;
.source "QuoteTokenizer.java"


# instance fields
.field private mCurrentPos:I

.field private final mDelimiters:Ljava/lang/String;

.field private final mQuotes:Ljava/lang/String;

.field private final mStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delimiters"    # Ljava/lang/String;
    .param p3, "quotes"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mDelimiters:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mQuotes:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    .line 34
    return-void
.end method


# virtual methods
.method public getRemainder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    iget v1, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 7

    .prologue
    .line 41
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    .line 42
    .local v2, "len":I
    iget v1, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    .line 43
    .local v1, "i":I
    if-ne v1, v2, :cond_1

    .line 44
    const/4 v4, 0x0

    .line 70
    :goto_0
    return-object v4

    .line 47
    .local v0, "c":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .end local v0    # "c":C
    :cond_1
    if-ge v1, v2, :cond_2

    .line 48
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 49
    .restart local v0    # "c":C
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mQuotes:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_5

    .line 50
    move v3, v0

    .line 51
    .local v3, "quoteChar":C
    add-int/lit8 v1, v1, 0x1

    :goto_1
    if-ge v1, v2, :cond_2

    .line 52
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    if-ne v0, v3, :cond_3

    .line 54
    add-int/lit8 v1, v1, 0x1

    .line 68
    .end local v0    # "c":C
    .end local v3    # "quoteChar":C
    :cond_2
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    iget v6, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "token":Ljava/lang/String;
    iput v1, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    goto :goto_0

    .line 56
    .end local v4    # "token":Ljava/lang/String;
    .restart local v0    # "c":C
    .restart local v3    # "quoteChar":C
    :cond_3
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_4

    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 51
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 61
    .end local v3    # "quoteChar":C
    :cond_5
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mDelimiters:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mStr:Ljava/lang/String;

    iget v6, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 63
    .restart local v4    # "token":Ljava/lang/String;
    add-int/lit8 v5, v1, 0x1

    iput v5, p0, Lcom/motorola/blur/util/mime/QuoteTokenizer;->mCurrentPos:I

    goto :goto_0
.end method
