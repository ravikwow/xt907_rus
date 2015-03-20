.class public Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;
.super Ljava/lang/Object;
.source "SpinnerIDGeneratorUtil.java"


# static fields
.field private static mSpinnerID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/high16 v0, 0xf0000

    sput v0, Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;->mSpinnerID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSpinnerID()I
    .locals 2

    .prologue
    .line 16
    sget v0, Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;->mSpinnerID:I

    const v1, 0xfffff

    if-le v0, v1, :cond_0

    .line 17
    invoke-static {}, Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;->resetSpinnerID()V

    .line 19
    :cond_0
    sget v0, Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;->mSpinnerID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;->mSpinnerID:I

    return v0
.end method

.method public static resetSpinnerID()V
    .locals 1

    .prologue
    .line 12
    const/high16 v0, 0xf0000

    sput v0, Lcom/motorola/contacts/util/SpinnerIDGeneratorUtil;->mSpinnerID:I

    .line 13
    return-void
.end method
