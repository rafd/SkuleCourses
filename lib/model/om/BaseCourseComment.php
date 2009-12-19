<?php

/**
 * Base class that represents a row from the 'course_comment' table.
 *
 * 
 *
 * This class was autogenerated by Propel 1.3.0-dev on:
 *
 * 12/19/09 15:53:20
 *
 * @package    lib.model.om
 */
abstract class BaseCourseComment extends BaseObject  implements Persistent {


  const PEER = 'CourseCommentPeer';

	/**
	 * The Peer class.
	 * Instance provides a convenient way of calling static methods on a class
	 * that calling code may not be able to identify.
	 * @var        CourseCommentPeer
	 */
	protected static $peer;

	/**
	 * The value for the id field.
	 * @var        int
	 */
	protected $id;

	/**
	 * The value for the ip field.
	 * @var        string
	 */
	protected $ip;

	/**
	 * The value for the course_id field.
	 * @var        string
	 */
	protected $course_id;

	/**
	 * The value for the comment field.
	 * @var        string
	 */
	protected $comment;

	/**
	 * The value for the input_dt field.
	 * @var        string
	 */
	protected $input_dt;

	/**
	 * The value for the approved field.
	 * Note: this column has a database default value of: false
	 * @var        boolean
	 */
	protected $approved;

	/**
	 * The value for the applies_to field.
	 * @var        int
	 */
	protected $applies_to;

	/**
	 * @var        Course
	 */
	protected $aCourse;

	/**
	 * @var        array CourseCommentDig[] Collection to store aggregation of CourseCommentDig objects.
	 */
	protected $collCourseCommentDigs;

	/**
	 * @var        Criteria The criteria used to select the current contents of collCourseCommentDigs.
	 */
	private $lastCourseCommentDigCriteria = null;

	/**
	 * Flag to prevent endless save loop, if this object is referenced
	 * by another object which falls in this transaction.
	 * @var        boolean
	 */
	protected $alreadyInSave = false;

	/**
	 * Flag to prevent endless validation loop, if this object is referenced
	 * by another object which falls in this transaction.
	 * @var        boolean
	 */
	protected $alreadyInValidation = false;

	/**
	 * Initializes internal state of BaseCourseComment object.
	 * @see        applyDefaults()
	 */
	public function __construct()
	{
		parent::__construct();
		$this->applyDefaultValues();
	}

	/**
	 * Applies default values to this object.
	 * This method should be called from the object's constructor (or
	 * equivalent initialization method).
	 * @see        __construct()
	 */
	public function applyDefaultValues()
	{
		$this->approved = false;
	}

	/**
	 * Get the [id] column value.
	 * 
	 * @return     int
	 */
	public function getId()
	{
		return $this->id;
	}

	/**
	 * Get the [ip] column value.
	 * 
	 * @return     string
	 */
	public function getIp()
	{
		return $this->ip;
	}

	/**
	 * Get the [course_id] column value.
	 * 
	 * @return     string
	 */
	public function getCourseId()
	{
		return $this->course_id;
	}

	/**
	 * Get the [comment] column value.
	 * 
	 * @return     string
	 */
	public function getComment()
	{
		return $this->comment;
	}

	/**
	 * Get the [optionally formatted] temporal [input_dt] column value.
	 * 
	 *
	 * @param      string $format The date/time format string (either date()-style or strftime()-style).
	 *							If format is NULL, then the raw DateTime object will be returned.
	 * @return     mixed Formatted date/time value as string or DateTime object (if format is NULL), NULL if column is NULL, and 0 if column value is 0000-00-00 00:00:00
	 * @throws     PropelException - if unable to parse/validate the date/time value.
	 */
	public function getInputDt($format = 'Y-m-d H:i:s')
	{
		if ($this->input_dt === null) {
			return null;
		}


		if ($this->input_dt === '0000-00-00 00:00:00') {
			// while technically this is not a default value of NULL,
			// this seems to be closest in meaning.
			return null;
		} else {
			try {
				$dt = new DateTime($this->input_dt);
			} catch (Exception $x) {
				throw new PropelException("Internally stored date/time/timestamp value could not be converted to DateTime: " . var_export($this->input_dt, true), $x);
			}
		}

		if ($format === null) {
			// Because propel.useDateTimeClass is TRUE, we return a DateTime object.
			return $dt;
		} elseif (strpos($format, '%') !== false) {
			return strftime($format, $dt->format('U'));
		} else {
			return $dt->format($format);
		}
	}

	/**
	 * Get the [approved] column value.
	 * 
	 * @return     boolean
	 */
	public function getApproved()
	{
		return $this->approved;
	}

	/**
	 * Get the [applies_to] column value.
	 * 
	 * @return     int
	 */
	public function getAppliesTo()
	{
		return $this->applies_to;
	}

	/**
	 * Set the value of [id] column.
	 * 
	 * @param      int $v new value
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setId($v)
	{
		if ($v !== null) {
			$v = (int) $v;
		}

		if ($this->id !== $v) {
			$this->id = $v;
			$this->modifiedColumns[] = CourseCommentPeer::ID;
		}

		return $this;
	} // setId()

	/**
	 * Set the value of [ip] column.
	 * 
	 * @param      string $v new value
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setIp($v)
	{
		if ($v !== null) {
			$v = (string) $v;
		}

		if ($this->ip !== $v) {
			$this->ip = $v;
			$this->modifiedColumns[] = CourseCommentPeer::IP;
		}

		return $this;
	} // setIp()

	/**
	 * Set the value of [course_id] column.
	 * 
	 * @param      string $v new value
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setCourseId($v)
	{
		if ($v !== null) {
			$v = (string) $v;
		}

		if ($this->course_id !== $v) {
			$this->course_id = $v;
			$this->modifiedColumns[] = CourseCommentPeer::COURSE_ID;
		}

		if ($this->aCourse !== null && $this->aCourse->getId() !== $v) {
			$this->aCourse = null;
		}

		return $this;
	} // setCourseId()

	/**
	 * Set the value of [comment] column.
	 * 
	 * @param      string $v new value
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setComment($v)
	{
		if ($v !== null) {
			$v = (string) $v;
		}

		if ($this->comment !== $v) {
			$this->comment = $v;
			$this->modifiedColumns[] = CourseCommentPeer::COMMENT;
		}

		return $this;
	} // setComment()

	/**
	 * Sets the value of [input_dt] column to a normalized version of the date/time value specified.
	 * 
	 * @param      mixed $v string, integer (timestamp), or DateTime value.  Empty string will
	 *						be treated as NULL for temporal objects.
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setInputDt($v)
	{
		// we treat '' as NULL for temporal objects because DateTime('') == DateTime('now')
		// -- which is unexpected, to say the least.
		if ($v === null || $v === '') {
			$dt = null;
		} elseif ($v instanceof DateTime) {
			$dt = $v;
		} else {
			// some string/numeric value passed; we normalize that so that we can
			// validate it.
			try {
				if (is_numeric($v)) { // if it's a unix timestamp
					$dt = new DateTime('@'.$v, new DateTimeZone('UTC'));
					// We have to explicitly specify and then change the time zone because of a
					// DateTime bug: http://bugs.php.net/bug.php?id=43003
					$dt->setTimeZone(new DateTimeZone(date_default_timezone_get()));
				} else {
					$dt = new DateTime($v);
				}
			} catch (Exception $x) {
				throw new PropelException('Error parsing date/time value: ' . var_export($v, true), $x);
			}
		}

		if ( $this->input_dt !== null || $dt !== null ) {
			// (nested ifs are a little easier to read in this case)

			$currNorm = ($this->input_dt !== null && $tmpDt = new DateTime($this->input_dt)) ? $tmpDt->format('Y-m-d H:i:s') : null;
			$newNorm = ($dt !== null) ? $dt->format('Y-m-d H:i:s') : null;

			if ( ($currNorm !== $newNorm) // normalized values don't match 
					)
			{
				$this->input_dt = ($dt ? $dt->format('Y-m-d H:i:s') : null);
				$this->modifiedColumns[] = CourseCommentPeer::INPUT_DT;
			}
		} // if either are not null

		return $this;
	} // setInputDt()

	/**
	 * Set the value of [approved] column.
	 * 
	 * @param      boolean $v new value
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setApproved($v)
	{
		if ($v !== null) {
			$v = (boolean) $v;
		}

		if ($this->approved !== $v || $v === false) {
			$this->approved = $v;
			$this->modifiedColumns[] = CourseCommentPeer::APPROVED;
		}

		return $this;
	} // setApproved()

	/**
	 * Set the value of [applies_to] column.
	 * 
	 * @param      int $v new value
	 * @return     CourseComment The current object (for fluent API support)
	 */
	public function setAppliesTo($v)
	{
		if ($v !== null) {
			$v = (int) $v;
		}

		if ($this->applies_to !== $v) {
			$this->applies_to = $v;
			$this->modifiedColumns[] = CourseCommentPeer::APPLIES_TO;
		}

		return $this;
	} // setAppliesTo()

	/**
	 * Indicates whether the columns in this object are only set to default values.
	 *
	 * This method can be used in conjunction with isModified() to indicate whether an object is both
	 * modified _and_ has some values set which are non-default.
	 *
	 * @return     boolean Whether the columns in this object are only been set with default values.
	 */
	public function hasOnlyDefaultValues()
	{
			// First, ensure that we don't have any columns that have been modified which aren't default columns.
			if (array_diff($this->modifiedColumns, array(CourseCommentPeer::APPROVED))) {
				return false;
			}

			if ($this->approved !== false) {
				return false;
			}

		// otherwise, everything was equal, so return TRUE
		return true;
	} // hasOnlyDefaultValues()

	/**
	 * Hydrates (populates) the object variables with values from the database resultset.
	 *
	 * An offset (0-based "start column") is specified so that objects can be hydrated
	 * with a subset of the columns in the resultset rows.  This is needed, for example,
	 * for results of JOIN queries where the resultset row includes columns from two or
	 * more tables.
	 *
	 * @param      array $row The row returned by PDOStatement->fetch(PDO::FETCH_NUM)
	 * @param      int $startcol 0-based offset column which indicates which restultset column to start with.
	 * @param      boolean $rehydrate Whether this object is being re-hydrated from the database.
	 * @return     int next starting column
	 * @throws     PropelException  - Any caught Exception will be rewrapped as a PropelException.
	 */
	public function hydrate($row, $startcol = 0, $rehydrate = false)
	{
		try {

			$this->id = ($row[$startcol + 0] !== null) ? (int) $row[$startcol + 0] : null;
			$this->ip = ($row[$startcol + 1] !== null) ? (string) $row[$startcol + 1] : null;
			$this->course_id = ($row[$startcol + 2] !== null) ? (string) $row[$startcol + 2] : null;
			$this->comment = ($row[$startcol + 3] !== null) ? (string) $row[$startcol + 3] : null;
			$this->input_dt = ($row[$startcol + 4] !== null) ? (string) $row[$startcol + 4] : null;
			$this->approved = ($row[$startcol + 5] !== null) ? (boolean) $row[$startcol + 5] : null;
			$this->applies_to = ($row[$startcol + 6] !== null) ? (int) $row[$startcol + 6] : null;
			$this->resetModified();

			$this->setNew(false);

			if ($rehydrate) {
				$this->ensureConsistency();
			}

			// FIXME - using NUM_COLUMNS may be clearer.
			return $startcol + 7; // 7 = CourseCommentPeer::NUM_COLUMNS - CourseCommentPeer::NUM_LAZY_LOAD_COLUMNS).

		} catch (Exception $e) {
			throw new PropelException("Error populating CourseComment object", $e);
		}
	}

	/**
	 * Checks and repairs the internal consistency of the object.
	 *
	 * This method is executed after an already-instantiated object is re-hydrated
	 * from the database.  It exists to check any foreign keys to make sure that
	 * the objects related to the current object are correct based on foreign key.
	 *
	 * You can override this method in the stub class, but you should always invoke
	 * the base method from the overridden method (i.e. parent::ensureConsistency()),
	 * in case your model changes.
	 *
	 * @throws     PropelException
	 */
	public function ensureConsistency()
	{

		if ($this->aCourse !== null && $this->course_id !== $this->aCourse->getId()) {
			$this->aCourse = null;
		}
	} // ensureConsistency

	/**
	 * Reloads this object from datastore based on primary key and (optionally) resets all associated objects.
	 *
	 * This will only work if the object has been saved and has a valid primary key set.
	 *
	 * @param      boolean $deep (optional) Whether to also de-associated any related objects.
	 * @param      PropelPDO $con (optional) The PropelPDO connection to use.
	 * @return     void
	 * @throws     PropelException - if this object is deleted, unsaved or doesn't have pk match in db
	 */
	public function reload($deep = false, PropelPDO $con = null)
	{
		if ($this->isDeleted()) {
			throw new PropelException("Cannot reload a deleted object.");
		}

		if ($this->isNew()) {
			throw new PropelException("Cannot reload an unsaved object.");
		}

		if ($con === null) {
			$con = Propel::getConnection(CourseCommentPeer::DATABASE_NAME, Propel::CONNECTION_READ);
		}

		// We don't need to alter the object instance pool; we're just modifying this instance
		// already in the pool.

		$stmt = CourseCommentPeer::doSelectStmt($this->buildPkeyCriteria(), $con);
		$row = $stmt->fetch(PDO::FETCH_NUM);
		$stmt->closeCursor();
		if (!$row) {
			throw new PropelException('Cannot find matching row in the database to reload object values.');
		}
		$this->hydrate($row, 0, true); // rehydrate

		if ($deep) {  // also de-associate any related objects?

			$this->aCourse = null;
			$this->collCourseCommentDigs = null;
			$this->lastCourseCommentDigCriteria = null;

		} // if (deep)
	}

	/**
	 * Removes this object from datastore and sets delete attribute.
	 *
	 * @param      PropelPDO $con
	 * @return     void
	 * @throws     PropelException
	 * @see        BaseObject::setDeleted()
	 * @see        BaseObject::isDeleted()
	 */
	public function delete(PropelPDO $con = null)
	{

    foreach (sfMixer::getCallables('BaseCourseComment:delete:pre') as $callable)
    {
      $ret = call_user_func($callable, $this, $con);
      if ($ret)
      {
        return;
      }
    }


		if ($this->isDeleted()) {
			throw new PropelException("This object has already been deleted.");
		}

		if ($con === null) {
			$con = Propel::getConnection(CourseCommentPeer::DATABASE_NAME, Propel::CONNECTION_WRITE);
		}
		
		$con->beginTransaction();
		try {
			CourseCommentPeer::doDelete($this, $con);
			$this->setDeleted(true);
			$con->commit();
		} catch (PropelException $e) {
			$con->rollBack();
			throw $e;
		}
	

    foreach (sfMixer::getCallables('BaseCourseComment:delete:post') as $callable)
    {
      call_user_func($callable, $this, $con);
    }

  }
	/**
	 * Persists this object to the database.
	 *
	 * If the object is new, it inserts it; otherwise an update is performed.
	 * All modified related objects will also be persisted in the doSave()
	 * method.  This method wraps all precipitate database operations in a
	 * single transaction.
	 *
	 * @param      PropelPDO $con
	 * @return     int The number of rows affected by this insert/update and any referring fk objects' save() operations.
	 * @throws     PropelException
	 * @see        doSave()
	 */
	public function save(PropelPDO $con = null)
	{

    foreach (sfMixer::getCallables('BaseCourseComment:save:pre') as $callable)
    {
      $affectedRows = call_user_func($callable, $this, $con);
      if (is_int($affectedRows))
      {
        return $affectedRows;
      }
    }


		if ($this->isDeleted()) {
			throw new PropelException("You cannot save an object that has been deleted.");
		}

		if ($con === null) {
			$con = Propel::getConnection(CourseCommentPeer::DATABASE_NAME, Propel::CONNECTION_WRITE);
		}
		
		$con->beginTransaction();
		try {
			$affectedRows = $this->doSave($con);
			$con->commit();
    foreach (sfMixer::getCallables('BaseCourseComment:save:post') as $callable)
    {
      call_user_func($callable, $this, $con, $affectedRows);
    }

			CourseCommentPeer::addInstanceToPool($this);
			return $affectedRows;
		} catch (PropelException $e) {
			$con->rollBack();
			throw $e;
		}
	}

	/**
	 * Performs the work of inserting or updating the row in the database.
	 *
	 * If the object is new, it inserts it; otherwise an update is performed.
	 * All related objects are also updated in this method.
	 *
	 * @param      PropelPDO $con
	 * @return     int The number of rows affected by this insert/update and any referring fk objects' save() operations.
	 * @throws     PropelException
	 * @see        save()
	 */
	protected function doSave(PropelPDO $con)
	{
		$affectedRows = 0; // initialize var to track total num of affected rows
		if (!$this->alreadyInSave) {
			$this->alreadyInSave = true;

			// We call the save method on the following object(s) if they
			// were passed to this object by their coresponding set
			// method.  This object relates to these object(s) by a
			// foreign key reference.

			if ($this->aCourse !== null) {
				if ($this->aCourse->isModified() || $this->aCourse->isNew()) {
					$affectedRows += $this->aCourse->save($con);
				}
				$this->setCourse($this->aCourse);
			}

			if ($this->isNew() ) {
				$this->modifiedColumns[] = CourseCommentPeer::ID;
			}

			// If this object has been modified, then save it to the database.
			if ($this->isModified()) {
				if ($this->isNew()) {
					$pk = CourseCommentPeer::doInsert($this, $con);
					$affectedRows += 1; // we are assuming that there is only 1 row per doInsert() which
										 // should always be true here (even though technically
										 // BasePeer::doInsert() can insert multiple rows).

					$this->setId($pk);  //[IMV] update autoincrement primary key

					$this->setNew(false);
				} else {
					$affectedRows += CourseCommentPeer::doUpdate($this, $con);
				}

				$this->resetModified(); // [HL] After being saved an object is no longer 'modified'
			}

			if ($this->collCourseCommentDigs !== null) {
				foreach ($this->collCourseCommentDigs as $referrerFK) {
					if (!$referrerFK->isDeleted()) {
						$affectedRows += $referrerFK->save($con);
					}
				}
			}

			$this->alreadyInSave = false;

		}
		return $affectedRows;
	} // doSave()

	/**
	 * Array of ValidationFailed objects.
	 * @var        array ValidationFailed[]
	 */
	protected $validationFailures = array();

	/**
	 * Gets any ValidationFailed objects that resulted from last call to validate().
	 *
	 *
	 * @return     array ValidationFailed[]
	 * @see        validate()
	 */
	public function getValidationFailures()
	{
		return $this->validationFailures;
	}

	/**
	 * Validates the objects modified field values and all objects related to this table.
	 *
	 * If $columns is either a column name or an array of column names
	 * only those columns are validated.
	 *
	 * @param      mixed $columns Column name or an array of column names.
	 * @return     boolean Whether all columns pass validation.
	 * @see        doValidate()
	 * @see        getValidationFailures()
	 */
	public function validate($columns = null)
	{
		$res = $this->doValidate($columns);
		if ($res === true) {
			$this->validationFailures = array();
			return true;
		} else {
			$this->validationFailures = $res;
			return false;
		}
	}

	/**
	 * This function performs the validation work for complex object models.
	 *
	 * In addition to checking the current object, all related objects will
	 * also be validated.  If all pass then <code>true</code> is returned; otherwise
	 * an aggreagated array of ValidationFailed objects will be returned.
	 *
	 * @param      array $columns Array of column names to validate.
	 * @return     mixed <code>true</code> if all validations pass; array of <code>ValidationFailed</code> objets otherwise.
	 */
	protected function doValidate($columns = null)
	{
		if (!$this->alreadyInValidation) {
			$this->alreadyInValidation = true;
			$retval = null;

			$failureMap = array();


			// We call the validate method on the following object(s) if they
			// were passed to this object by their coresponding set
			// method.  This object relates to these object(s) by a
			// foreign key reference.

			if ($this->aCourse !== null) {
				if (!$this->aCourse->validate($columns)) {
					$failureMap = array_merge($failureMap, $this->aCourse->getValidationFailures());
				}
			}


			if (($retval = CourseCommentPeer::doValidate($this, $columns)) !== true) {
				$failureMap = array_merge($failureMap, $retval);
			}


				if ($this->collCourseCommentDigs !== null) {
					foreach ($this->collCourseCommentDigs as $referrerFK) {
						if (!$referrerFK->validate($columns)) {
							$failureMap = array_merge($failureMap, $referrerFK->getValidationFailures());
						}
					}
				}


			$this->alreadyInValidation = false;
		}

		return (!empty($failureMap) ? $failureMap : true);
	}

	/**
	 * Retrieves a field from the object by name passed in as a string.
	 *
	 * @param      string $name name
	 * @param      string $type The type of fieldname the $name is of:
	 *                     one of the class type constants BasePeer::TYPE_PHPNAME, BasePeer::TYPE_STUDLYPHPNAME
	 *                     BasePeer::TYPE_COLNAME, BasePeer::TYPE_FIELDNAME, BasePeer::TYPE_NUM
	 * @return     mixed Value of field.
	 */
	public function getByName($name, $type = BasePeer::TYPE_PHPNAME)
	{
		$pos = CourseCommentPeer::translateFieldName($name, $type, BasePeer::TYPE_NUM);
		$field = $this->getByPosition($pos);
		return $field;
	}

	/**
	 * Retrieves a field from the object by Position as specified in the xml schema.
	 * Zero-based.
	 *
	 * @param      int $pos position in xml schema
	 * @return     mixed Value of field at $pos
	 */
	public function getByPosition($pos)
	{
		switch($pos) {
			case 0:
				return $this->getId();
				break;
			case 1:
				return $this->getIp();
				break;
			case 2:
				return $this->getCourseId();
				break;
			case 3:
				return $this->getComment();
				break;
			case 4:
				return $this->getInputDt();
				break;
			case 5:
				return $this->getApproved();
				break;
			case 6:
				return $this->getAppliesTo();
				break;
			default:
				return null;
				break;
		} // switch()
	}

	/**
	 * Exports the object as an array.
	 *
	 * You can specify the key type of the array by passing one of the class
	 * type constants.
	 *
	 * @param      string $keyType (optional) One of the class type constants BasePeer::TYPE_PHPNAME, BasePeer::TYPE_STUDLYPHPNAME
	 *                        BasePeer::TYPE_COLNAME, BasePeer::TYPE_FIELDNAME, BasePeer::TYPE_NUM. Defaults to BasePeer::TYPE_PHPNAME.
	 * @param      boolean $includeLazyLoadColumns (optional) Whether to include lazy loaded columns.  Defaults to TRUE.
	 * @return     an associative array containing the field names (as keys) and field values
	 */
	public function toArray($keyType = BasePeer::TYPE_PHPNAME, $includeLazyLoadColumns = true)
	{
		$keys = CourseCommentPeer::getFieldNames($keyType);
		$result = array(
			$keys[0] => $this->getId(),
			$keys[1] => $this->getIp(),
			$keys[2] => $this->getCourseId(),
			$keys[3] => $this->getComment(),
			$keys[4] => $this->getInputDt(),
			$keys[5] => $this->getApproved(),
			$keys[6] => $this->getAppliesTo(),
		);
		return $result;
	}

	/**
	 * Sets a field from the object by name passed in as a string.
	 *
	 * @param      string $name peer name
	 * @param      mixed $value field value
	 * @param      string $type The type of fieldname the $name is of:
	 *                     one of the class type constants BasePeer::TYPE_PHPNAME, BasePeer::TYPE_STUDLYPHPNAME
	 *                     BasePeer::TYPE_COLNAME, BasePeer::TYPE_FIELDNAME, BasePeer::TYPE_NUM
	 * @return     void
	 */
	public function setByName($name, $value, $type = BasePeer::TYPE_PHPNAME)
	{
		$pos = CourseCommentPeer::translateFieldName($name, $type, BasePeer::TYPE_NUM);
		return $this->setByPosition($pos, $value);
	}

	/**
	 * Sets a field from the object by Position as specified in the xml schema.
	 * Zero-based.
	 *
	 * @param      int $pos position in xml schema
	 * @param      mixed $value field value
	 * @return     void
	 */
	public function setByPosition($pos, $value)
	{
		switch($pos) {
			case 0:
				$this->setId($value);
				break;
			case 1:
				$this->setIp($value);
				break;
			case 2:
				$this->setCourseId($value);
				break;
			case 3:
				$this->setComment($value);
				break;
			case 4:
				$this->setInputDt($value);
				break;
			case 5:
				$this->setApproved($value);
				break;
			case 6:
				$this->setAppliesTo($value);
				break;
		} // switch()
	}

	/**
	 * Populates the object using an array.
	 *
	 * This is particularly useful when populating an object from one of the
	 * request arrays (e.g. $_POST).  This method goes through the column
	 * names, checking to see whether a matching key exists in populated
	 * array. If so the setByName() method is called for that column.
	 *
	 * You can specify the key type of the array by additionally passing one
	 * of the class type constants BasePeer::TYPE_PHPNAME, BasePeer::TYPE_STUDLYPHPNAME,
	 * BasePeer::TYPE_COLNAME, BasePeer::TYPE_FIELDNAME, BasePeer::TYPE_NUM.
	 * The default key type is the column's phpname (e.g. 'AuthorId')
	 *
	 * @param      array  $arr     An array to populate the object from.
	 * @param      string $keyType The type of keys the array uses.
	 * @return     void
	 */
	public function fromArray($arr, $keyType = BasePeer::TYPE_PHPNAME)
	{
		$keys = CourseCommentPeer::getFieldNames($keyType);

		if (array_key_exists($keys[0], $arr)) $this->setId($arr[$keys[0]]);
		if (array_key_exists($keys[1], $arr)) $this->setIp($arr[$keys[1]]);
		if (array_key_exists($keys[2], $arr)) $this->setCourseId($arr[$keys[2]]);
		if (array_key_exists($keys[3], $arr)) $this->setComment($arr[$keys[3]]);
		if (array_key_exists($keys[4], $arr)) $this->setInputDt($arr[$keys[4]]);
		if (array_key_exists($keys[5], $arr)) $this->setApproved($arr[$keys[5]]);
		if (array_key_exists($keys[6], $arr)) $this->setAppliesTo($arr[$keys[6]]);
	}

	/**
	 * Build a Criteria object containing the values of all modified columns in this object.
	 *
	 * @return     Criteria The Criteria object containing all modified values.
	 */
	public function buildCriteria()
	{
		$criteria = new Criteria(CourseCommentPeer::DATABASE_NAME);

		if ($this->isColumnModified(CourseCommentPeer::ID)) $criteria->add(CourseCommentPeer::ID, $this->id);
		if ($this->isColumnModified(CourseCommentPeer::IP)) $criteria->add(CourseCommentPeer::IP, $this->ip);
		if ($this->isColumnModified(CourseCommentPeer::COURSE_ID)) $criteria->add(CourseCommentPeer::COURSE_ID, $this->course_id);
		if ($this->isColumnModified(CourseCommentPeer::COMMENT)) $criteria->add(CourseCommentPeer::COMMENT, $this->comment);
		if ($this->isColumnModified(CourseCommentPeer::INPUT_DT)) $criteria->add(CourseCommentPeer::INPUT_DT, $this->input_dt);
		if ($this->isColumnModified(CourseCommentPeer::APPROVED)) $criteria->add(CourseCommentPeer::APPROVED, $this->approved);
		if ($this->isColumnModified(CourseCommentPeer::APPLIES_TO)) $criteria->add(CourseCommentPeer::APPLIES_TO, $this->applies_to);

		return $criteria;
	}

	/**
	 * Builds a Criteria object containing the primary key for this object.
	 *
	 * Unlike buildCriteria() this method includes the primary key values regardless
	 * of whether or not they have been modified.
	 *
	 * @return     Criteria The Criteria object containing value(s) for primary key(s).
	 */
	public function buildPkeyCriteria()
	{
		$criteria = new Criteria(CourseCommentPeer::DATABASE_NAME);

		$criteria->add(CourseCommentPeer::ID, $this->id);

		return $criteria;
	}

	/**
	 * Returns the primary key for this object (row).
	 * @return     int
	 */
	public function getPrimaryKey()
	{
		return $this->getId();
	}

	/**
	 * Generic method to set the primary key (id column).
	 *
	 * @param      int $key Primary key.
	 * @return     void
	 */
	public function setPrimaryKey($key)
	{
		$this->setId($key);
	}

	/**
	 * Sets contents of passed object to values from current object.
	 *
	 * If desired, this method can also make copies of all associated (fkey referrers)
	 * objects.
	 *
	 * @param      object $copyObj An object of CourseComment (or compatible) type.
	 * @param      boolean $deepCopy Whether to also copy all rows that refer (by fkey) to the current row.
	 * @throws     PropelException
	 */
	public function copyInto($copyObj, $deepCopy = false)
	{

		$copyObj->setIp($this->ip);

		$copyObj->setCourseId($this->course_id);

		$copyObj->setComment($this->comment);

		$copyObj->setInputDt($this->input_dt);

		$copyObj->setApproved($this->approved);

		$copyObj->setAppliesTo($this->applies_to);


		if ($deepCopy) {
			// important: temporarily setNew(false) because this affects the behavior of
			// the getter/setter methods for fkey referrer objects.
			$copyObj->setNew(false);

			foreach ($this->getCourseCommentDigs() as $relObj) {
				if ($relObj !== $this) {  // ensure that we don't try to copy a reference to ourselves
					$copyObj->addCourseCommentDig($relObj->copy($deepCopy));
				}
			}

		} // if ($deepCopy)


		$copyObj->setNew(true);

		$copyObj->setId(NULL); // this is a auto-increment column, so set to default value

	}

	/**
	 * Makes a copy of this object that will be inserted as a new row in table when saved.
	 * It creates a new object filling in the simple attributes, but skipping any primary
	 * keys that are defined for the table.
	 *
	 * If desired, this method can also make copies of all associated (fkey referrers)
	 * objects.
	 *
	 * @param      boolean $deepCopy Whether to also copy all rows that refer (by fkey) to the current row.
	 * @return     CourseComment Clone of current object.
	 * @throws     PropelException
	 */
	public function copy($deepCopy = false)
	{
		// we use get_class(), because this might be a subclass
		$clazz = get_class($this);
		$copyObj = new $clazz();
		$this->copyInto($copyObj, $deepCopy);
		return $copyObj;
	}

	/**
	 * Returns a peer instance associated with this om.
	 *
	 * Since Peer classes are not to have any instance attributes, this method returns the
	 * same instance for all member of this class. The method could therefore
	 * be static, but this would prevent one from overriding the behavior.
	 *
	 * @return     CourseCommentPeer
	 */
	public function getPeer()
	{
		if (self::$peer === null) {
			self::$peer = new CourseCommentPeer();
		}
		return self::$peer;
	}

	/**
	 * Declares an association between this object and a Course object.
	 *
	 * @param      Course $v
	 * @return     CourseComment The current object (for fluent API support)
	 * @throws     PropelException
	 */
	public function setCourse(Course $v = null)
	{
		if ($v === null) {
			$this->setCourseId(NULL);
		} else {
			$this->setCourseId($v->getId());
		}

		$this->aCourse = $v;

		// Add binding for other direction of this n:n relationship.
		// If this object has already been added to the Course object, it will not be re-added.
		if ($v !== null) {
			$v->addCourseComment($this);
		}

		return $this;
	}


	/**
	 * Get the associated Course object
	 *
	 * @param      PropelPDO Optional Connection object.
	 * @return     Course The associated Course object.
	 * @throws     PropelException
	 */
	public function getCourse(PropelPDO $con = null)
	{
		if ($this->aCourse === null && (($this->course_id !== "" && $this->course_id !== null))) {
			$c = new Criteria(CoursePeer::DATABASE_NAME);
			$c->add(CoursePeer::ID, $this->course_id);
			$this->aCourse = CoursePeer::doSelectOne($c, $con);
			/* The following can be used additionally to
			   guarantee the related object contains a reference
			   to this object.  This level of coupling may, however, be
			   undesirable since it could result in an only partially populated collection
			   in the referenced object.
			   $this->aCourse->addCourseComments($this);
			 */
		}
		return $this->aCourse;
	}

	/**
	 * Clears out the collCourseCommentDigs collection (array).
	 *
	 * This does not modify the database; however, it will remove any associated objects, causing
	 * them to be refetched by subsequent calls to accessor method.
	 *
	 * @return     void
	 * @see        addCourseCommentDigs()
	 */
	public function clearCourseCommentDigs()
	{
		$this->collCourseCommentDigs = null; // important to set this to NULL since that means it is uninitialized
	}

	/**
	 * Initializes the collCourseCommentDigs collection (array).
	 *
	 * By default this just sets the collCourseCommentDigs collection to an empty array (like clearcollCourseCommentDigs());
	 * however, you may wish to override this method in your stub class to provide setting appropriate
	 * to your application -- for example, setting the initial array to the values stored in database.
	 *
	 * @return     void
	 */
	public function initCourseCommentDigs()
	{
		$this->collCourseCommentDigs = array();
	}

	/**
	 * Gets an array of CourseCommentDig objects which contain a foreign key that references this object.
	 *
	 * If this collection has already been initialized with an identical Criteria, it returns the collection.
	 * Otherwise if this CourseComment has previously been saved, it will retrieve
	 * related CourseCommentDigs from storage. If this CourseComment is new, it will return
	 * an empty collection or the current collection, the criteria is ignored on a new object.
	 *
	 * @param      PropelPDO $con
	 * @param      Criteria $criteria
	 * @return     array CourseCommentDig[]
	 * @throws     PropelException
	 */
	public function getCourseCommentDigs($criteria = null, PropelPDO $con = null)
	{
		if ($criteria === null) {
			$criteria = new Criteria(CourseCommentPeer::DATABASE_NAME);
		}
		elseif ($criteria instanceof Criteria)
		{
			$criteria = clone $criteria;
		}

		if ($this->collCourseCommentDigs === null) {
			if ($this->isNew()) {
			   $this->collCourseCommentDigs = array();
			} else {

				$criteria->add(CourseCommentDigPeer::COMMENT_ID, $this->id);

				CourseCommentDigPeer::addSelectColumns($criteria);
				$this->collCourseCommentDigs = CourseCommentDigPeer::doSelect($criteria, $con);
			}
		} else {
			// criteria has no effect for a new object
			if (!$this->isNew()) {
				// the following code is to determine if a new query is
				// called for.  If the criteria is the same as the last
				// one, just return the collection.


				$criteria->add(CourseCommentDigPeer::COMMENT_ID, $this->id);

				CourseCommentDigPeer::addSelectColumns($criteria);
				if (!isset($this->lastCourseCommentDigCriteria) || !$this->lastCourseCommentDigCriteria->equals($criteria)) {
					$this->collCourseCommentDigs = CourseCommentDigPeer::doSelect($criteria, $con);
				}
			}
		}
		$this->lastCourseCommentDigCriteria = $criteria;
		return $this->collCourseCommentDigs;
	}

	/**
	 * Returns the number of related CourseCommentDig objects.
	 *
	 * @param      Criteria $criteria
	 * @param      boolean $distinct
	 * @param      PropelPDO $con
	 * @return     int Count of related CourseCommentDig objects.
	 * @throws     PropelException
	 */
	public function countCourseCommentDigs(Criteria $criteria = null, $distinct = false, PropelPDO $con = null)
	{
		if ($criteria === null) {
			$criteria = new Criteria(CourseCommentPeer::DATABASE_NAME);
		} else {
			$criteria = clone $criteria;
		}

		if ($distinct) {
			$criteria->setDistinct();
		}

		$count = null;

		if ($this->collCourseCommentDigs === null) {
			if ($this->isNew()) {
				$count = 0;
			} else {

				$criteria->add(CourseCommentDigPeer::COMMENT_ID, $this->id);

				$count = CourseCommentDigPeer::doCount($criteria, $con);
			}
		} else {
			// criteria has no effect for a new object
			if (!$this->isNew()) {
				// the following code is to determine if a new query is
				// called for.  If the criteria is the same as the last
				// one, just return count of the collection.


				$criteria->add(CourseCommentDigPeer::COMMENT_ID, $this->id);

				if (!isset($this->lastCourseCommentDigCriteria) || !$this->lastCourseCommentDigCriteria->equals($criteria)) {
					$count = CourseCommentDigPeer::doCount($criteria, $con);
				} else {
					$count = count($this->collCourseCommentDigs);
				}
			} else {
				$count = count($this->collCourseCommentDigs);
			}
		}
		return $count;
	}

	/**
	 * Method called to associate a CourseCommentDig object to this object
	 * through the CourseCommentDig foreign key attribute.
	 *
	 * @param      CourseCommentDig $l CourseCommentDig
	 * @return     void
	 * @throws     PropelException
	 */
	public function addCourseCommentDig(CourseCommentDig $l)
	{
		if ($this->collCourseCommentDigs === null) {
			$this->initCourseCommentDigs();
		}
		if (!in_array($l, $this->collCourseCommentDigs, true)) { // only add it if the **same** object is not already associated
			array_push($this->collCourseCommentDigs, $l);
			$l->setCourseComment($this);
		}
	}

	/**
	 * Resets all collections of referencing foreign keys.
	 *
	 * This method is a user-space workaround for PHP's inability to garbage collect objects
	 * with circular references.  This is currently necessary when using Propel in certain
	 * daemon or large-volumne/high-memory operations.
	 *
	 * @param      boolean $deep Whether to also clear the references on all associated objects.
	 */
	public function clearAllReferences($deep = false)
	{
		if ($deep) {
			if ($this->collCourseCommentDigs) {
				foreach ((array) $this->collCourseCommentDigs as $o) {
					$o->clearAllReferences($deep);
				}
			}
		} // if ($deep)

		$this->collCourseCommentDigs = null;
			$this->aCourse = null;
	}


  public function __call($method, $arguments)
  {
    if (!$callable = sfMixer::getCallable('BaseCourseComment:'.$method))
    {
      throw new sfException(sprintf('Call to undefined method BaseCourseComment::%s', $method));
    }

    array_unshift($arguments, $this);

    return call_user_func_array($callable, $arguments);
  }


} // BaseCourseComment
