.class public Lcom/android/contacts/model/BaseAccountType$SimpleInflater;
.super Ljava/lang/Object;
.source "BaseAccountType.java"

# interfaces
.implements Lcom/android/contacts/model/AccountType$StringInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/BaseAccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleInflater"
.end annotation


# instance fields
.field private final mColumnName:Ljava/lang/String;

.field private final mStringRes:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "stringRes"    # I

    .prologue
    .line 475
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 476
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "stringRes"    # I
    .param p2, "columnName"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput p1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    .line 484
    iput-object p2, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    .line 485
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 479
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(ILjava/lang/String;)V

    .line 480
    return-void
.end method


# virtual methods
.method public getColumnNameForTest()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 489
    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .line 490
    .local v2, "validColumn":Z
    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    if-lez v7, :cond_1

    move v3, v5

    .line 492
    .local v3, "validString":Z
    :goto_0
    if-eqz v3, :cond_2

    iget v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {p1, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 493
    .local v1, "stringValue":Ljava/lang/CharSequence;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v7, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    .local v0, "columnValue":Ljava/lang/CharSequence;
    :goto_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 496
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 502
    .end local v1    # "stringValue":Ljava/lang/CharSequence;
    :cond_0
    :goto_3
    return-object v1

    .end local v0    # "columnValue":Ljava/lang/CharSequence;
    .end local v3    # "validString":Z
    :cond_1
    move v3, v6

    .line 490
    goto :goto_0

    .restart local v3    # "validString":Z
    :cond_2
    move-object v1, v4

    .line 492
    goto :goto_1

    .restart local v1    # "stringValue":Ljava/lang/CharSequence;
    :cond_3
    move-object v0, v4

    .line 493
    goto :goto_2

    .line 497
    .restart local v0    # "columnValue":Ljava/lang/CharSequence;
    :cond_4
    if-nez v3, :cond_0

    .line 499
    if-eqz v2, :cond_5

    move-object v1, v0

    .line 500
    goto :goto_3

    :cond_5
    move-object v1, v4

    .line 502
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStringRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mStringRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mColumnName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;->mColumnName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
